//
//  MockSloperAPI.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/17/24.
//

import Foundation
import SloperAPI

#if DEBUG
struct MockSloperAPI: SloperAPIProtocol {
    
    var stubbedFetchTickersCallback: (() async throws -> [Ticker])!
    var stubbedFetchQuotesCallback: (() async throws -> [Quote])!
    
    func fetchTickers(tickers: String) async throws -> [Ticker] {
        try await stubbedFetchTickersCallback()
    }
    
    func fetchQuotes(tickers: String) async throws -> [Quote] {
        try await stubbedFetchQuotesCallback()
    }
    
}
#endif
