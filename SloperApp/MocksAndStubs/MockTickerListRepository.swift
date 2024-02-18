//
//  MockTickerListRepository.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/17/24.
//

import Foundation
import SloperAPI

#if DEBUG

struct MockTickerListRepository: TickerListRepository {
    
    var stubbedLoad: (() async throws -> [Ticker])!
    func load() async throws -> [Ticker] {
        try await stubbedLoad()
    }
    
    func save(_ current: [Ticker]) async throws {
        
    }
    
}

#endif
