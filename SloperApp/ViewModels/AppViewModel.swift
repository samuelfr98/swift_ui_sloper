//
//  AppViewModel.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import Foundation
import SloperAPI
import SwiftUI

@MainActor
class AppViewModel: ObservableObject {
    
    @Published var tickers: [Ticker] = [] {
        didSet {
            saveTickers()
        }
    }
    
    var emptyTickersText = "Search and add symbol to see stock quotes"
    var titleText = "Sloper"
    @Published var subtitleText: String
    var attributionText = "Powered by Sloper's Django API"
    
    private let subtitleDateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "d MMM"
        return df
    }()
    
    let tickerListRepository: TickerListRepository
    
    init(repository: TickerListRepository = TickerPListRepository()) {
        self.tickerListRepository = repository
        self.subtitleText = subtitleDateFormatter.string(from: Date())
        loadTickers()
    }
    
    private func loadTickers() {
        Task { [weak self] in
            guard let self = self else { return }
            do {
                self.tickers = try await tickerListRepository.load()
            } catch {
                print(error.localizedDescription)
                self.tickers = []
            }
        }
    }
    
    private func saveTickers() {
        Task { [weak self] in
            guard let self = self else { return }
            do {
                try await tickerListRepository.save(self.tickers)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func removeTickers(atOffsets offsets: IndexSet) {
        tickers.remove(atOffsets: offsets)
    }
    
    func isAddedToMyTickers(ticker: Ticker) -> Bool {
        tickers.first {
            $0.symbol == ticker.symbol
        } != nil
    }
    
    func toggleTicker(_ ticker: Ticker) {
        if isAddedToMyTickers(ticker: ticker) {
            removeFromMyTickers(ticker: ticker)
        } else {
            addToMyTickers(ticker: ticker)
        }
    }
    
    private func addToMyTickers(ticker: Ticker) {
        tickers.append(ticker)
    }
    
    private func removeFromMyTickers(ticker: Ticker) {
        guard let index = tickers.firstIndex(where: {$0.symbol == ticker.symbol}) else { return }
        tickers.remove(at: index)
    }
    
    func openYahooFinance() {
        let url = URL(string: "https://finance.yahoo.com")!
        guard UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url)
    }
    
}

