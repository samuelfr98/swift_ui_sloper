//
//  QuoteExtensions.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/14/24.
//

import Foundation
import SloperAPI

extension Quote {
    
    var regularPriceText: String? {
        Utils.format(value: regularMarketPrice)
    }
    
    var regularDiffText: String? {
        guard let text = Utils.format(value: regularMarketChange) else { return nil }
        
        return text.hasPrefix("-") ? text : "+\(text)"
    }
    
}
