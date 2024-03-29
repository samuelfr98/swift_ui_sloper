//
//  StockTickerView.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/17/24.
//

import SwiftUI
import SloperAPI

struct StockTickerView: View {
    
    @StateObject var chartVM: ChartViewModel
    @StateObject var quoteVM: TickerQuoteViewModel
    @Environment(\.dismiss) private var dismiss
      
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            headerView.padding(.horizontal)
            
            Divider()
                .padding(.vertical, 8)
                .padding(.horizontal)
            scrollView
            
        }
        .padding(.top)
        .background(Color(uiColor: .systemBackground))
        .task(id: chartVM.selectedRange.rawValue) {
            if quoteVM.quote == nil {
                await quoteVM.fetchQuote()
            }
            await chartVM.fetchData()
        }
    }
    
    private var scrollView: some View {
        ScrollView {
            priceDiffRowView
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.top, 8)
                .padding(.horizontal)
            
            Divider()
            
            ZStack {
                DateRangePickerView(selectedRange: $chartVM.selectedRange)
                    .opacity(chartVM.selectedXOpacity)
                
                Text(chartVM.selectedXDateText)
                    .font(.headline)
                    .padding(.vertical, 4)
                    .padding(.horizontal)
            }
            
            Divider().opacity(chartVM.selectedXOpacity)
            
            chartView
                .padding(.horizontal)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 220)
            
            Divider().padding([.horizontal, .top])
            
            quoteDetailRowView
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 80)
            
        }
        .scrollIndicators(.hidden)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
    }
    
    @ViewBuilder
    private var chartView: some View {
        switch chartVM.fetchPhase {
            case .fetching: LoadingStateView()
            case .success(let data):
                ChartView(data: data, vm: chartVM)
            case .failure(let error):
                ErrorStateView(error: "Chart: \(error.localizedDescription)")
            default: EmptyView()
        }
    }
    
    @ViewBuilder
    private var quoteDetailRowView: some View {
        
        switch quoteVM.phase {
        case .fetching: LoadingStateView()
        case .failure(let error): ErrorStateView(error: "Quote: \(error.localizedDescription)")
                .padding(.horizontal)
        case .success(let quote):
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(quote.columnItems) {
                        QuoteDetailRowColumnView(item: $0)
                    }
                }
                .padding(.horizontal)
                .font(.caption.weight(.semibold))
                .lineLimit(1)
            }
            .scrollIndicators(.hidden)
            
        default: EmptyView()
        }
    }
    
    private var priceDiffRowView: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let quote = quoteVM.quote {
                HStack {
                    
                    // Need to add marketState for below to be necessary
//                    if quote.isTrading,
//                       let price = quote.regularPriceText,
//                       let diff = quote.regularDiffText
//                    {
//                        priceDiffStackView(price: price, diff: diff, caption: nil)
//                    } else {
//                        if let atClosePriceText =
//                            quote.regularPriceText,
//                           let atCloseDiffText =
//                            quote.regularDiffText {
//                            priceDiffStackView(price: atClosePriceText, diff: atCloseDiffText, caption: "At Close")
//                        }
//                        
//                        if let afterHoursPriceText =
//                            quote.postPriceText,
//                           let afterHoursDiffText =
//                            quote.postPriceDiffText {
//                            priceDiffStackView(price: afterHoursPriceText, diff: postPriceDiffText, caption: "After Hours")
//                        }
//                    }
        
                    priceDiffStackView(price: quote.regularPriceText!, diff: quote.regularDiffText!, caption: nil)
                    Spacer()
                }
            }
            exchangeCurrencyView

        }
    }

    private var exchangeCurrencyView: some View {
        HStack(spacing: 4) {
            if let exchange = quoteVM.ticker.exchangeName {
                Text(exchange)
            }
            
            if let currency = quoteVM.quote?.currency {
                Text("・")
                Text(currency)
            }
        }
        .font(.subheadline.weight(.semibold))
            .foregroundColor(Color(uiColor: .secondaryLabel))
    }
    
    private func priceDiffStackView(price: String, diff: String, caption: String?) -> some View {
        
        VStack(alignment: .leading) {
            HStack(alignment: .lastTextBaseline, spacing: 16) {
                Text(price).font(.headline.bold())
                Text(diff).font(.subheadline.weight(.semibold))
                    .foregroundColor(diff
                        .hasPrefix("-") ? .red : .green)
            }
            
            if let caption {
                Text(caption)
                    .font(.subheadline.weight(
                        .semibold))
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            
        }
        
    }
    
    private var headerView: some View {
        HStack(alignment: .lastTextBaseline) {
            Text(quoteVM.ticker.symbol).font(.title.bold())
            if let shortName = quoteVM.ticker.shortName {
                Text(shortName)
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            Spacer()
            closeButton
        }
    }
    
    private var closeButton: some View {
        Button {
            dismiss()
        } label: {
            Circle()
                .frame(width:36, height: 36)
                .foregroundColor(.gray.opacity(0.1))
                .overlay {
                    Image(systemName: "xmark")
                        .font(.system(size: 18).bold())
                        .foregroundColor(Color(uiColor: .secondaryLabel))
                }
        }
        .buttonStyle(.plain)
    }
    
}

struct StockTickerView_Previews: PreviewProvider {
    
    static var tradingStubsQuoteViewModel: TickerQuoteViewModel = {
       var mockAPI = MockSloperAPI()
        mockAPI.stubbedFetchQuotesCallback = {
            [Quote.stub(isTrading: true)]
        }
        return TickerQuoteViewModel(ticker: .stub, sloperAPI: mockAPI)
    }()
    
    static var closedStubsQuoteViewModel: TickerQuoteViewModel = {
       var mockAPI = MockSloperAPI()
        mockAPI.stubbedFetchQuotesCallback = {
            [Quote.stub(isTrading: false)]
        }
        return TickerQuoteViewModel(ticker: .stub, sloperAPI: mockAPI)
    }()
    
    static var loadingStubsQuoteViewModel: TickerQuoteViewModel = {
       var mockAPI = MockSloperAPI()
        mockAPI.stubbedFetchQuotesCallback = {
            await withCheckedContinuation {
                _ in
            }
        }
        return TickerQuoteViewModel(ticker: .stub, sloperAPI: mockAPI)
    }()
    
    static var errorStubsQuoteViewModel: TickerQuoteViewModel = {
       var mockAPI = MockSloperAPI()
        mockAPI.stubbedFetchQuotesCallback = {
            throw NSError(domain: "error", code: 0, userInfo: [NSLocalizedDescriptionKey: "An error has occured!"])
        }
        return TickerQuoteViewModel(ticker: .stub, sloperAPI: mockAPI)
    }()
    
    static var chartVM: ChartViewModel {
        ChartViewModel(ticker: .stub, apiService: MockSloperAPI())
    }
    
    static var previews: some View {
        
        Group {
            StockTickerView(chartVM: chartVM, quoteVM: tradingStubsQuoteViewModel)
                .previewDisplayName("Trading")
                .frame(height: 700)
            StockTickerView(chartVM: chartVM,quoteVM: closedStubsQuoteViewModel)
                .previewDisplayName("Closed")
                .frame(height: 700)
            StockTickerView(chartVM: chartVM,quoteVM: loadingStubsQuoteViewModel)
                .previewDisplayName("Loading")
                .frame(height: 700)
            StockTickerView(chartVM: chartVM,quoteVM: errorStubsQuoteViewModel)
                .previewDisplayName("Error")
                .frame(height: 700)
        }.previewLayout(.sizeThatFits)
    }
}
