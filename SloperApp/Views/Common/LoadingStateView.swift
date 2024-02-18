//
//  LoadingStateView.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import SwiftUI

struct LoadingStateView: View {
    var body: some View {
       HStack {
           Spacer()
           ProgressView()
               .progressViewStyle(.circular)
           Spacer()
       }
    }
}

struct LoadingStateView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingStateView()
    }
}
