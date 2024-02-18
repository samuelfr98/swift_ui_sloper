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
            Ticker(symbol: "AAPL", shortName: "Apple Inc."),
            Ticker(symbol: "TSLA", shortName: "Tesla."),
            Ticker(symbol: "NVDA", shortName: "Nvidia Corp."),
            Ticker(symbol: "AMD", shortName: "Advanced Micro Device")
        ]
    }

}

extension Quote {
    
    static var stubs: [Quote] {
        [
            Quote(symbol: "AAPL", regularMarketPrice: 150.43, regularMarketChange: -2.31),
            Quote(symbol: "TSLA", regularMarketPrice: 250.43, regularMarketChange: 2.89),
            Quote(symbol: "NVDA", regularMarketPrice: 100.43, regularMarketChange: -19.32),
            Quote(symbol: "AMD", regularMarketPrice: 70.43, regularMarketChange: 12.55)
        ]
    }
    
    static var stubsDict: [String: Quote] {
        var dict = [String: Quote]()
        stubs.forEach { dict[$0.symbol] = $0 }
        return dict
    }
    
  
}


#endif
