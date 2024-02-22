//
//  ChartViewData.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/18/24.
//

import Foundation
import SloperAPI
import SwiftUI

struct ChartViewData: Identifiable {
           
    let id = UUID()
    let yAxisData: ChartAxisData
    let items: [ChartViewItem]
    let lineColor: Color
    let previousCloseRuleMarkValue: Double?
    
}

struct ChartViewItem: Identifiable {
    
    let id = UUID()
    let timestamp: Date
    let value: Double
    
}

struct ChartAxisData {
    
    let axisStart: Double
    let axisEnd: Double
    
}
