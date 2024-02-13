//
//  QuotesViewModel.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import Foundation
import SwiftUI
import SloperAPI

@MainActor
class QuotesViewModel: ObservableObject {
    
    @Published var quoteDict: [String: Quote] = [:]
    
    
}

