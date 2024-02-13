//
//  AppViewModel.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import Foundation
import SloperAPI
import SwiftUI

@MainActor
class AppViewModel: ObservableObject {
    
    @Published var tickers: [Ticker] = []
    
    
}

