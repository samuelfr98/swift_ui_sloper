//
//  ChartView.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/18/24.
//

import SwiftUI
import SloperAPI
import Charts

struct ChartView: View {
    
    let data: ChartViewData
    @ObservedObject var vm: ChartViewModel
    
    var body: some View {
        chart
            .chartXScale(domain: data.items.first!.timestamp...data.items.last!.timestamp)
            .chartYScale(domain:
                            data.yAxisData.axisStart...data.yAxisData.axisEnd
            )
            .chartPlotStyle { chartPlotStyle($0) }
            .chartOverlay { proxy in
                GeometryReader { gProxy in
                    Rectangle().fill(.clear).contentShape(Rectangle())
                        .gesture(DragGesture(minimumDistance: 0)
                            .onChanged {
                                onChangeDrag(value: $0, chartProxy: proxy, geometryProxy: gProxy)
                            }
                            .onEnded { _ in
                                vm.selectedX = nil
                            }
                        )
                }
            }
            
    }
    
    
    private var chart: some View {
        Chart {
            ForEach(data.items) {
                LineMark(
                    x: .value("Time", $0.timestamp),
                    y: .value("Price", $0.value))
                .foregroundStyle(vm.foregroundMarkColor)
                
                AreaMark(
                        x: .value("Time", $0.timestamp),
                        yStart: .value("Min", data.yAxisData.axisStart),
                        yEnd: .value("Max", $0.value)
                )
                .foregroundStyle(LinearGradient(
                    gradient: Gradient(
                        colors: [vm.foregroundMarkColor, .clear]),
                            startPoint: .top, endPoint: .bottom)
                ).opacity(0.6)
                
                if let previousClose = data.previousCloseRuleMarkValue {
                    RuleMark(y: .value("Previous Close", previousClose))
                        .lineStyle(.init(lineWidth: 0.1, dash: [6]))
                        .foregroundStyle(.gray.opacity(0.4))
                }
                
                if let (selectedX, text) = vm.selectedXRuleMark {
                    RuleMark(x: .value("Slected timestamp", selectedX))
                        .lineStyle(.init(lineWidth: 1))
                        .annotation {
                            Text(text)
                                .font(.system(size: 14))
                                .foregroundColor(.blue)
                        }
                        .foregroundStyle(vm.foregroundMarkColor)
                }
                
            }
        }
    }
    
    private func chartPlotStyle (_ plotContent: ChartPlotContent) -> some View {
        plotContent
            .frame(height: 200)
            .overlay{
                Rectangle()
                    .foregroundColor(.gray.opacity(0.5))
                    .mask(ZStack {
                        VStack {
                            Spacer()
                            Rectangle().frame(height: 1)
                        }
                        
                        HStack {
                            Spacer()
                            Rectangle().frame(width: 0.3)
                        }
                    })
            }
    }
    
    private func onChangeDrag(value: DragGesture.Value, chartProxy: ChartProxy, geometryProxy: GeometryProxy) {
        let xCurrent = value.location.x - geometryProxy[chartProxy.plotAreaFrame].origin.x
        
        if let timestamp: Date = chartProxy.value(atX: xCurrent),
            let startDate = data.items.first?.timestamp,
            let endDate = data.items.last?.timestamp,
            timestamp >= startDate && timestamp <= endDate {
            vm.selectedX = timestamp
        }
    }
    
}

struct ChartView_Previews: PreviewProvider {
    
    static let allRanges = ChartRange.allCases
    static let oneDayOngoing = ChartData.stub1DOngoing
    
    static var previews: some View {
        ForEach(allRanges) {
            ChartContainerView_Previews(vm: chartViewModel(range: $0, stub: $0.stubs), title: $0.title)
        }
        
        ChartContainerView_Previews(vm: chartViewModel(range: .oneDay, stub: oneDayOngoing), title: "1D Ongoing")
    }
    
    static func chartViewModel(range: ChartRange, stub: ChartData) -> ChartViewModel {
        var mockSloperAPI = MockSloperAPI()
        mockSloperAPI.stubbedFetchChartDataCallback = { _ in stub }
        let chartVM = ChartViewModel(ticker: .stub, apiService: mockSloperAPI)
        return chartVM
        
    }
}


#if DEBUG

struct ChartContainerView_Previews: View {
    
    @StateObject var vm: ChartViewModel
    let title: String
    var body: some View {
        VStack {
            Text(title)
                .padding(.bottom)
            if let chartViewData = vm.chart {
                ChartView(data: chartViewData, vm: vm)
            }
        }
        .padding()
        .frame(maxHeight: 272)
        .previewLayout(.sizeThatFits)
        .previewDisplayName(title)
        .task { await vm.fetchData() }
    }
    
}

#endif
