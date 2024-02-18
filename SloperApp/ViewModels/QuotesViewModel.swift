//
//  QuotesViewModel.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import Foundation
import SwiftUI
import SloperAPI

@MainActor
class QuotesViewModel: ObservableObject {
    
    @Published var quoteDict: [String: Quote] = [:]
    let sloperAPI: SloperAPIProtocol
    
    init(sloperAPI: SloperAPIProtocol = SloperAPI()) {
        self.sloperAPI = sloperAPI
    }
    
    func fetchQuotes(tickers: [Ticker]) async {
        guard !tickers.isEmpty else { return }
        do {
            let symbols = tickers.map { $0.symbol }.joined(separator: " ")
            let quotes = try await sloperAPI.fetchQuotes(tickers: symbols)
            var dict = [String: Quote]()
            quotes.forEach {dict[$0.symbol] = $0 }
            self.quoteDict = dict
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func priceForTicker(_ ticker: Ticker) -> PriceChange? {
        guard let quote = quoteDict[ticker.symbol],
                let price = quote.regularPriceText,
                let change = quote.regularDiffText
        else { return nil }
        return (price, change)
    }
    
    
    
}

