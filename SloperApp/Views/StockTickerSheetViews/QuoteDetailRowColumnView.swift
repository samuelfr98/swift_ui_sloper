//
//  QuoteDetailRowColumnView.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/18/24.
//

import SwiftUI

struct QuoteDetailRowColumnItem: Identifiable {
    
    let id = UUID()
    let rows: [RowItem]
    
    struct RowItem: Identifiable {
        let id = UUID()
        let title: String
        let value: String
    }
}

struct QuoteDetailRowColumnView: View {
    let item: QuoteDetailRowColumnItem
    
    var body: some View {
        VStack(spacing: 6) {
            ForEach(item.rows) { row in
                HStack(alignment: .lastTextBaseline) {
                    Text(row.title).foregroundColor(.gray)
                    Spacer()
                    Text(row.value)
                }
            }
        }
        .frame(width: 120)
    }
}

struct QuoteDetailRowColumnView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteDetailRowColumnView(item: .init(rows: [
            .init(title: "Open", value: "420.69"),
            .init(title: "Open", value: "420.69"),
            .init(title: "Open", value: "420.69")
        ])
        
        )
        .previewLayout(.sizeThatFits)
    }
}
