//
//  LoadingStateView.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import SwiftUI

struct LoadingStateView: View {
    var body: some View {
        Spacer()
        ProgressView()
            .progressViewStyle(.circular)
        Spacer()
    }
}

#Preview {
    LoadingStateView()
}
