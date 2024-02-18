//
//  QuoteExtensions.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/14/24.
//

import Foundation
import SloperAPI

extension Quote {
    
//    var isTrading: Bool {
//        guard let marketState, marketState == "REGULAR" else {
//            return false
//        }
//        return true
//    }
    
    var regularPriceText: String? {
        Utils.format(value: regularMarketPrice)
    }
    
    var regularDiffText: String? {
        guard let text = Utils.format(value: regularMarketChange) else { return nil }
        
        return text.hasPrefix("-") ? text : "+\(text)"
    }

    
    // Need to bring in after hours data once available
    
//    var postPriceText: String? {
//        Utils.format(value: postMarketPrice)
//    }
//    
//    var postDiffText: String? {
//        guard let text = Utils.format(value: postMarketChange) else { return nil }
//
//        return text.hasPrefix("-") ? text : "+\(text)"
//    }
    
}
