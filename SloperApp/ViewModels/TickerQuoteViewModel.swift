//
//  TickerQuoteViewModel.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/17/24.
//

import Foundation
import SloperAPI
import SwiftUI

@MainActor
class TickerQuoteViewModel: ObservableObject {
    
    @Published var phase = FetchPhase<Quote>.initial
    var quote: Quote? { phase.value }
    var error: Error? { phase.error }
    
    let ticker: Ticker
    let sloperAPI: SloperAPIProtocol
    
    init(ticker: Ticker, sloperAPI: SloperAPIProtocol = SloperAPI()) {
        self.ticker = ticker
        self.sloperAPI = sloperAPI
    }
    
    func fetchQuote() async {
        phase = .fetching
        
        do {
            let response = try await sloperAPI.fetchQuotes(tickers: ticker.symbol)
            if let quote = response.first {
                phase = .success(quote)
            } else {
                phase = .empty
            }
        } catch {
            print(error.localizedDescription)
            phase = .failure(error)
        }
    }
    
}

