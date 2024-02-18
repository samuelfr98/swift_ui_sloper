//
//  ChartRangeExtensions.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/18/24.
//

import Foundation
import SloperAPI

extension ChartRange: Identifiable {
    
    public var id: Self { self }
    var title: String {
        switch self {
            case .oneDay: return "1D"
            case .oneWeek: return "1W"
            case .oneMonth: return "1M"
            case .threeMonth: return "3M"
            case .sixMonth: return "6M"
            case .oneYear: return "1Y"
            case .twoYear: return "2Y"
            case .fiveYear: return "5Y"
            case .tenYear: return "10Y"
            case .ytd: return "YTD"
            case .max: return "ALL"
        }
    }
    
}
