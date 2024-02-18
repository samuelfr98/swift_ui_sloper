//
//  SloperAPI.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/16/24.
//

import Foundation
import SloperAPI

protocol SloperAPIProtocol {
    func fetchTickers(tickers: String) async throws -> [Ticker]
    func fetchQuotes(tickers: String) async throws -> [Quote]

}

extension SloperAPI: SloperAPIProtocol {}
