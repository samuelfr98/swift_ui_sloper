//
//  TickerListRowData.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import Foundation

typealias PriceChange = (price: String, cahnge: String)

struct TickerListRowData {
    
    enum RowType {
        case main
        case search(isSaved: Bool, onButtonTapped: () -> ())
    }
    
    let symbol: String
    let name: String?
    let price: PriceChange?
    let type: RowType
    
    init(symbol: String, name: String?, price: PriceChange?, type: RowType) {
        self.symbol = symbol
        self.name = name
        self.price = price
        self.type = type
    }
    
}
