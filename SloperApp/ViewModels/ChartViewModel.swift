//
//  ChartViewModel.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/18/24.
//

import Foundation
import SloperAPI
import SwiftUI
import Charts

@MainActor
class ChartViewModel: ObservableObject {
    
    @Published var fetchPhase = FetchPhase<ChartViewData>.initial
    var chart: ChartViewData? { fetchPhase.value }
    
    let ticker: Ticker
    let apiService: SloperAPIProtocol
    
    @AppStorage("selectedRange") private var _range = ChartRange.oneDay.rawValue
    
    @Published var selectedRange = ChartRange.oneDay {
        didSet {
            _range = selectedRange.rawValue
        }
    }
    
    @Published var selectedX: (any Plottable)?
    var selectedXRuleMark: (value:Date, text: String)? {
        guard let selectedX = selectedX as? Date,
              let chart
        else { return nil }
        let index = DateBins(thresholds: chart.items.map { $0.timestamp } ).index(for: selectedX)
        return (selectedX, String(format: "%.2f", chart.items[index].value))
    }
    
    var foregroundMarkColor: Color {
        (selectedX != nil) ? .cyan : (chart?.lineColor ?? .cyan)
    }
    
    private let selectedValueDateFormatter = {
        let df = DateFormatter()
        df.dateStyle = .medium
        return df
    }()
    
    var selectedXDateText: String {
        guard let selectedX = selectedX as? Date, let chart else { return "" }
        if selectedRange == .oneDay || selectedRange == .oneWeek {
            selectedValueDateFormatter.timeStyle = .short
        } else {
            selectedValueDateFormatter.timeStyle = .none
        }
        let index = DateBins(thresholds: chart.items.map { $0.timestamp }).index(for: selectedX)
        let item = chart.items[index]
        
        return selectedValueDateFormatter.string(from: item.timestamp)
    }
    
    var selectedXOpacity: Double {
        selectedX == nil ? 1 : 0
    }
    
    init(ticker: Ticker, apiService: SloperAPIProtocol = SloperAPI()) {
        self.ticker = ticker
        self.apiService = apiService
        self.selectedRange = ChartRange(rawValue: _range) ?? .oneDay
    }
    
    func fetchData() async {
        do {
            fetchPhase = .fetching
            let rangeType = self.selectedRange
            let chartData = try await apiService.fetchChartReponse(ticker: ticker.symbol, range: rangeType)
            
            guard rangeType == self.selectedRange else { return }
            if let chartData {
                fetchPhase = .success(transformChartViewData(chartData))
            } else {
                fetchPhase = .empty
            }
            
        } catch {
            fetchPhase = .failure(error)
        }
    }
    
    func transformChartViewData(_ data: ChartData) -> ChartViewData {
        let items = data.indicators.map { ChartViewItem(timestamp: $0.Date, value: $0.Close) }
        let yAxisChartData = yAxisChartData(data)
        let previousCloseRuleMarkValue = previousCloseRuleMarkValue(data:data, yAxisData: yAxisChartData)
        return ChartViewData(
            yAxisData: yAxisChartData,
            items: items,
            lineColor: getLineColor(data: data),
            previousCloseRuleMarkValue: previousCloseRuleMarkValue
        )
    }
    
    func yAxisChartData(_ data: ChartData) -> ChartAxisData {
        let closes = data.indicators.map { $0.Close }
        var lowest = closes.min() ?? 0
        var highest = closes.max() ?? 0
        
        if let prevClose = data.meta.previousClose, selectedRange == .oneDay {
            if prevClose < lowest {
                lowest = prevClose
            } else if prevClose > highest {
                highest = prevClose
            }
        }
        
        return ChartAxisData(axisStart: lowest + 0.01, axisEnd: highest + 0.01)
    }
    
    func previousCloseRuleMarkValue(data: ChartData, yAxisData: ChartAxisData) -> Double? {
        guard let previousClose = data.meta.previousClose, selectedRange == .oneDay else {
            return nil
        }
        return (yAxisData.axisStart <= previousClose && previousClose <= yAxisData.axisEnd ? previousClose : nil)
    }
    
    func getLineColor(data: ChartData) -> Color {
        if let lastPrice = data.indicators.last?.Close {
            if selectedRange == .oneDay, let prevClose = data.meta.previousClose {
                return lastPrice >= prevClose ? .green : .red
            } else if let firstPrice = data.indicators.first?.Close {
                return lastPrice >= firstPrice ? .green : .red
            }
        }
        return .blue
    }
}
