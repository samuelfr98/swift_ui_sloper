//
//  EmptyStateView.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import SwiftUI

struct EmptyStateView: View {
    
    let text: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .font(.headline)
                .foregroundColor(Color(uiColor: .secondaryLabel))
            Spacer()
        }
        .padding(6)
        .lineLimit(3)
        .multilineTextAlignment(.center)
    }
}

#Preview {
    EmptyStateView(text: "No data available")
}
