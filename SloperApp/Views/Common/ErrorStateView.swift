//
//  ErrorStateView.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import SwiftUI

struct ErrorStateView: View {
    
    let error: String
    var retryCallback: (() -> ())?
    
    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 16) {
                Text(error)
                if let retryCallback {
                    Button("Retry", action: retryCallback)
                        .buttonStyle(.borderedProminent)
                }
            }
            Spacer()
        }.padding(64)
    }
    
}

struct ErrorStateViewPreview: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            ErrorStateView(error:"An Error Occurred") {}
                .previewDisplayName("With Retry Button")
            
            ErrorStateView(error:"An Error Occurred")
                .previewDisplayName("Without Retry Button")
        }
    }
}
