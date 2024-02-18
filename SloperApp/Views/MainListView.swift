//
//  MainListView.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/13/24.
//

import SwiftUI
import SloperAPI

struct MainListView: View {
    
    @EnvironmentObject var appVM: AppViewModel
    @StateObject var quotesVM = QuotesViewModel()
    @StateObject var searchVM = SearchViewModel()
    
    
    var body: some View {
        tickerListView
            .listStyle(.plain)
            .overlay { overlayView }
            .toolbar {
                titleToolbar
                attributionToolbar
            }
            .searchable(text: $searchVM.query)
            .refreshable { await quotesVM.fetchQuotes(tickers: appVM.tickers ) }
            .sheet(item: $appVM.selectedTicker) {
                StockTickerView(quoteVM: .init(ticker: $0, sloperAPI: quotesVM.sloperAPI))
                    .presentationDetents([.height(560)])
            }
            .task(id: appVM.tickers) { await quotesVM.fetchQuotes(tickers: appVM.tickers) }
    }
    
    private var tickerListView: some View {
        
        List {
            ForEach(appVM.tickers) { ticker in
                TickerListRowView(
                    data: .init(
                        symbol: ticker.symbol,
                        name: ticker.shortName,
                        price: quotesVM.priceForTicker(ticker),
                        type: .main))
                .contentShape(Rectangle())
                .onTapGesture { 
                    appVM.selectedTicker = ticker
                }
            }
            .onDelete { appVM.removeTickers(atOffsets: $0) }
        }
    }
    
    @ViewBuilder
    private var overlayView: some View {
        if appVM.tickers.isEmpty {
            EmptyStateView(text: appVM.emptyTickersText)
        }
        
        if searchVM.isSearching {
            SearchView(searchVM: searchVM)
        }
    }
    
    private var titleToolbar: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            VStack(alignment: .leading, spacing: -4) {
                Text(appVM.titleText)
                Text(appVM.subtitleText).foregroundColor(Color(uiColor: .secondaryLabel))
            }.font(.title2.weight(.heavy))
                .padding(.bottom)
        }
    }
    
    private var attributionToolbar: some ToolbarContent {
        ToolbarItem(placement: .bottomBar) {
            HStack {
                Button {
                    appVM.openYahooFinance()
                } label: {
                    Text(appVM.attributionText)
                        .font(.caption.weight(.heavy))
                        .foregroundColor(Color(uiColor: .secondaryLabel))
                }
                .buttonStyle(.plain)
                Spacer()
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    
    @StateObject static var appVM: AppViewModel = {
        var mock = MockTickerListRepository()
        mock.stubbedLoad = { Ticker.stubs }
        return AppViewModel(repository: mock)
    }()
    
    @StateObject static var emptyAppVM: AppViewModel = {
        var mock = MockTickerListRepository()
        mock.stubbedLoad = { [] }
        return AppViewModel(repository: mock)
    }()
    
    static var quotesVM: QuotesViewModel = {
        let vm = QuotesViewModel()
        vm.quoteDict = Quote.stubsDict
        return vm
    }()
    
    static var searchVM: SearchViewModel = {
        var mock = MockSloperAPI()
        mock.stubbedFetchTickersCallback = { Ticker.stubs }
        return SearchViewModel(sloperAPI: mock)
    }()
    
    
    static var previews: some View {
            Group {
                NavigationStack {
                    MainListView(quotesVM: quotesVM, searchVM: searchVM)
                }
                .environmentObject(appVM)
                .previewDisplayName("With Tickers")
                
                NavigationStack {
                    MainListView(quotesVM: quotesVM, searchVM: searchVM)
                }
                .environmentObject(emptyAppVM)
                .previewDisplayName("With Empty Tickers")
        
            }
        }
}
