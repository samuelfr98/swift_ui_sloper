//
//  Stubs.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import Foundation
import SloperAPI

#if DEBUG

extension Ticker {
    
    static var stubs: [Ticker] {
        [
            Ticker(symbol: "AAPL", quoteType: nil, shortName: "Apple Inc.", longName: nil, sector: nil, industry: nil, exchangeName: nil),
            Ticker(symbol: "MSFT", quoteType: nil, shortName: "Microsoft Inc.", longName: nil, sector: nil, industry: nil, exchangeName: nil),
            Ticker(symbol: "TSLA", quoteType: nil, shortName: "Tesla.", longName: nil, sector: nil, industry: nil, exchangeName: nil)
        ]
    }
    
    
    
}

#endif
