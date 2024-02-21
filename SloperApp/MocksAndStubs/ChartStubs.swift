//
//  ChartStubs.swift
//  SloperApp
//
//  Created by Sam Friedman on 2/18/24.
//

import Foundation
import SloperAPI

#if DEBUG
extension ChartRange {
    
    var stubs: ChartData {
        switch self {
            case .oneDay: return ChartData.stub1DOngoing
            case .oneWeek: return ChartData.stub1DOngoing
            case .oneMonth: return ChartData.stub1DOngoing
            case .threeMonth: return ChartData.stub1DOngoing
            case .sixMonth: return ChartData.stub1DOngoing
            case .ytd: return ChartData.stub1DOngoing
            case .oneYear: return ChartData.stub1DOngoing
            case .twoYear: return ChartData.stub1DOngoing
            case .fiveYear: return ChartData.stub1DOngoing
            case .tenYear: return ChartData.stub1DOngoing
            case .max: return ChartData.stub1DOngoing
        }
    }
}
        
extension ChartData {
    
    static var stub1DOngoing: ChartData {
        decodeFromJSONString(chart_stub_1d_ongoing_json_string)
    }
    
//    static var stub1D: ChartData {
//        decodeFromJSONString(chart_stub_1d_json_string)
//    }
//    
//    static var stub1W: ChartData {
//        decodeFromJSONString(chart_stub_1w_json_string)
//    }
//    
//    static var stub1M: ChartData {
//        decodeFromJSONString(chart_stub_1M_json_string)
//    }
//    
//    static var stub3M: ChartData {
//        decodeFromJSONString(chart_stub_3M_json_string)
//    }
//    
//    static var stub6M: ChartData {
//        decodeFromJSONString(chart_stub_6M_json_string)
//    }
//    
//    static var stubYTD: ChartData {
//        decodeFromJSONString(chart_stub_YTD_json_string)
//    }
//    
//    static var stub1Y: ChartData {
//        decodeFromJSONString(chart_stub_1Y_json_string)
//    }
//    
//    static var stub2Y: ChartData {
//        decodeFromJSONString(chart_stub_2Y_json_string)
//    }
//    
//    static var stub5Y: ChartData {
//        decodeFromJSONString(chart_stub_5Y_json_string)
//    }
//    
//    static var stub10Y: ChartData {
//        decodeFromJSONString(chart_stub_10Y_json_string)
//    }
//    
//    static var stubMax: ChartData {
//        decodeFromJSONString(chart_stub_max_json_string)
//    }
    
    private static func decodeFromJSONString(_ jsonString: String) -> ChartData {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return try! decoder.decode(ChartResponse.self, from: jsonString.data(using: .utf8)!).chartResponse

    }
    
}



let chart_stub_1d_ongoing_json_string = """
{
    "chartResponse": {
        "meta": {
            "currency": "USD",
            "symbol": "MSFT",
            "regularMarketPrice": 402.79,
            "previousClose": 399.06,
            "gmtOffSetMilliseconds": -18000000,
            "regularTradingPeriodStartDate": 1708439400,
            "regularTradingPeriodEndDate": 1708462800
        },
        "indicators": [
            {
                "Date": 1708446420,
                "Open": 401.56988525390625,
                "High": 401.7749938964844,
                "Low": 401.4700012207031,
                "Close": 401.760009765625,
                "Volume": 38314,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446480,
                "Open": 401.7799987792969,
                "High": 402.07501220703125,
                "Low": 401.7799987792969,
                "Close": 402.04998779296875,
                "Volume": 57633,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446540,
                "Open": 402.06500244140625,
                "High": 402.17999267578125,
                "Low": 401.8409118652344,
                "Close": 401.8599853515625,
                "Volume": 58073,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446600,
                "Open": 401.8399963378906,
                "High": 401.8399963378906,
                "Low": 401.6400146484375,
                "Close": 401.6400146484375,
                "Volume": 28453,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446660,
                "Open": 401.6401062011719,
                "High": 401.6549987792969,
                "Low": 400.92999267578125,
                "Close": 400.9620056152344,
                "Volume": 58442,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446720,
                "Open": 400.9403991699219,
                "High": 401.010009765625,
                "Low": 400.8599853515625,
                "Close": 400.94000244140625,
                "Volume": 46831,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446780,
                "Open": 400.9136962890625,
                "High": 400.94000244140625,
                "Low": 400.5199890136719,
                "Close": 400.5400085449219,
                "Volume": 33951,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446840,
                "Open": 400.5199890136719,
                "High": 400.5400085449219,
                "Low": 400.2900085449219,
                "Close": 400.5,
                "Volume": 47767,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446900,
                "Open": 400.4800109863281,
                "High": 400.6069030761719,
                "Low": 400.3800048828125,
                "Close": 400.4800109863281,
                "Volume": 24847,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708446960,
                "Open": 400.4599914550781,
                "High": 400.5400085449219,
                "Low": 400.3900146484375,
                "Close": 400.510009765625,
                "Volume": 22982,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447020,
                "Open": 400.5199890136719,
                "High": 400.8800048828125,
                "Low": 400.5013122558594,
                "Close": 400.625,
                "Volume": 81319,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447080,
                "Open": 400.6099853515625,
                "High": 400.7799987792969,
                "Low": 400.54998779296875,
                "Close": 400.7250061035156,
                "Volume": 23036,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447140,
                "Open": 400.7200012207031,
                "High": 401.0299987792969,
                "Low": 400.7200012207031,
                "Close": 400.9100036621094,
                "Volume": 28612,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447200,
                "Open": 400.9020080566406,
                "High": 400.989990234375,
                "Low": 400.8500061035156,
                "Close": 400.9599914550781,
                "Volume": 18668,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447260,
                "Open": 400.9649963378906,
                "High": 401.1300048828125,
                "Low": 400.93060302734375,
                "Close": 401.0849914550781,
                "Volume": 23760,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447320,
                "Open": 401.0849914550781,
                "High": 401.1099853515625,
                "Low": 400.92999267578125,
                "Close": 401.05999755859375,
                "Volume": 33201,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447380,
                "Open": 401.0375061035156,
                "High": 401.0950012207031,
                "Low": 400.7919921875,
                "Close": 400.8599853515625,
                "Volume": 24197,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447440,
                "Open": 400.8301086425781,
                "High": 401.1300048828125,
                "Low": 400.8301086425781,
                "Close": 401.0450134277344,
                "Volume": 25920,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447500,
                "Open": 401.0450134277344,
                "High": 401.1700134277344,
                "Low": 400.94000244140625,
                "Close": 401.07000732421875,
                "Volume": 26050,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447560,
                "Open": 401.0600891113281,
                "High": 401.2300109863281,
                "Low": 401.05999755859375,
                "Close": 401.1448974609375,
                "Volume": 15705,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447620,
                "Open": 401.04998779296875,
                "High": 401.1300048828125,
                "Low": 400.8500061035156,
                "Close": 400.9200134277344,
                "Volume": 19503,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447680,
                "Open": 400.94000244140625,
                "High": 401.0299987792969,
                "Low": 400.880615234375,
                "Close": 400.880615234375,
                "Volume": 15675,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447740,
                "Open": 400.8900146484375,
                "High": 401.0199890136719,
                "Low": 400.8550109863281,
                "Close": 400.8550109863281,
                "Volume": 22510,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447800,
                "Open": 400.8399963378906,
                "High": 400.94000244140625,
                "Low": 400.80999755859375,
                "Close": 400.8450012207031,
                "Volume": 16503,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447860,
                "Open": 400.864990234375,
                "High": 400.9700012207031,
                "Low": 400.68011474609375,
                "Close": 400.8399963378906,
                "Volume": 28014,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447920,
                "Open": 400.80999755859375,
                "High": 400.8900146484375,
                "Low": 400.7149963378906,
                "Close": 400.8800048828125,
                "Volume": 15985,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708447980,
                "Open": 400.860107421875,
                "High": 400.95989990234375,
                "Low": 400.5199890136719,
                "Close": 400.5799865722656,
                "Volume": 33759,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448040,
                "Open": 400.5559997558594,
                "High": 400.5799865722656,
                "Low": 400.29998779296875,
                "Close": 400.31988525390625,
                "Volume": 23513,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448100,
                "Open": 400.2756042480469,
                "High": 400.3699951171875,
                "Low": 400.1300048828125,
                "Close": 400.20001220703125,
                "Volume": 53303,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448160,
                "Open": 400.2099914550781,
                "High": 400.32159423828125,
                "Low": 400.04998779296875,
                "Close": 400.1300048828125,
                "Volume": 31726,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448220,
                "Open": 400.1299133300781,
                "High": 400.1650085449219,
                "Low": 400.010009765625,
                "Close": 400.0400085449219,
                "Volume": 25407,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448280,
                "Open": 400.0299987792969,
                "High": 400.17999267578125,
                "Low": 399.989990234375,
                "Close": 399.989990234375,
                "Volume": 50099,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448340,
                "Open": 399.9649963378906,
                "High": 400.010009765625,
                "Low": 399.79998779296875,
                "Close": 399.80999755859375,
                "Volume": 36711,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448400,
                "Open": 399.7850036621094,
                "High": 399.9800109863281,
                "Low": 399.5201110839844,
                "Close": 399.5899963378906,
                "Volume": 36736,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448460,
                "Open": 399.54998779296875,
                "High": 399.80999755859375,
                "Low": 399.53009033203125,
                "Close": 399.80999755859375,
                "Volume": 32748,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448520,
                "Open": 399.7699890136719,
                "High": 399.82379150390625,
                "Low": 399.6000061035156,
                "Close": 399.82000732421875,
                "Volume": 19763,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448580,
                "Open": 399.8349914550781,
                "High": 399.8699951171875,
                "Low": 399.67010498046875,
                "Close": 399.7438049316406,
                "Volume": 16495,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448640,
                "Open": 399.7300109863281,
                "High": 399.8500061035156,
                "Low": 399.6499938964844,
                "Close": 399.79998779296875,
                "Volume": 27826,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448700,
                "Open": 399.7998962402344,
                "High": 399.7998962402344,
                "Low": 399.552001953125,
                "Close": 399.552001953125,
                "Volume": 21089,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448760,
                "Open": 399.5201110839844,
                "High": 399.5950012207031,
                "Low": 399.42999267578125,
                "Close": 399.44000244140625,
                "Volume": 32202,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448820,
                "Open": 399.431884765625,
                "High": 399.5299987792969,
                "Low": 399.32000732421875,
                "Close": 399.4800109863281,
                "Volume": 26667,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448880,
                "Open": 399.4700012207031,
                "High": 399.57000732421875,
                "Low": 399.32000732421875,
                "Close": 399.3233947753906,
                "Volume": 27853,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708448940,
                "Open": 399.33990478515625,
                "High": 399.5299987792969,
                "Low": 399.331298828125,
                "Close": 399.3699951171875,
                "Volume": 27157,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449000,
                "Open": 399.385009765625,
                "High": 399.7099914550781,
                "Low": 399.3500061035156,
                "Close": 399.6700134277344,
                "Volume": 20084,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449060,
                "Open": 399.6000061035156,
                "High": 399.7200012207031,
                "Low": 399.5199890136719,
                "Close": 399.55999755859375,
                "Volume": 9512,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449120,
                "Open": 399.5400085449219,
                "High": 399.6499938964844,
                "Low": 399.489990234375,
                "Close": 399.606201171875,
                "Volume": 21108,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449180,
                "Open": 399.6099853515625,
                "High": 399.7300109863281,
                "Low": 399.510009765625,
                "Close": 399.5400085449219,
                "Volume": 12348,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449240,
                "Open": 399.527099609375,
                "High": 399.5700988769531,
                "Low": 399.5,
                "Close": 399.510009765625,
                "Volume": 17630,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449300,
                "Open": 399.5199890136719,
                "High": 399.55999755859375,
                "Low": 399.3450012207031,
                "Close": 399.3450012207031,
                "Volume": 19852,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449360,
                "Open": 399.3349914550781,
                "High": 399.4599914550781,
                "Low": 399.17999267578125,
                "Close": 399.25,
                "Volume": 21469,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449420,
                "Open": 399.2101135253906,
                "High": 399.32000732421875,
                "Low": 399.19000244140625,
                "Close": 399.2799987792969,
                "Volume": 15871,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449480,
                "Open": 399.239990234375,
                "High": 399.5299987792969,
                "Low": 399.2301025390625,
                "Close": 399.3699951171875,
                "Volume": 25964,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449540,
                "Open": 399.3500061035156,
                "High": 399.4599914550781,
                "Low": 399.17999267578125,
                "Close": 399.3299865722656,
                "Volume": 21484,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449600,
                "Open": 399.2900085449219,
                "High": 399.4599914550781,
                "Low": 399.20001220703125,
                "Close": 399.44000244140625,
                "Volume": 21136,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449660,
                "Open": 399.42498779296875,
                "High": 399.5199890136719,
                "Low": 399.3711853027344,
                "Close": 399.44000244140625,
                "Volume": 22603,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449720,
                "Open": 399.42999267578125,
                "High": 399.42999267578125,
                "Low": 399.26190185546875,
                "Close": 399.2900085449219,
                "Volume": 19693,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449780,
                "Open": 399.29998779296875,
                "High": 399.29998779296875,
                "Low": 399.1700134277344,
                "Close": 399.20001220703125,
                "Volume": 21851,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449840,
                "Open": 399.2091064453125,
                "High": 399.260009765625,
                "Low": 398.9599914550781,
                "Close": 399.0299987792969,
                "Volume": 41946,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449900,
                "Open": 399.0299987792969,
                "High": 399.2499084472656,
                "Low": 399.0299987792969,
                "Close": 399.2300109863281,
                "Volume": 22763,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708449960,
                "Open": 399.25,
                "High": 399.3299865722656,
                "Low": 399.1789855957031,
                "Close": 399.18951416015625,
                "Volume": 24700,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450020,
                "Open": 399.1700134277344,
                "High": 399.20001220703125,
                "Low": 399.0899963378906,
                "Close": 399.1942138671875,
                "Volume": 20172,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450080,
                "Open": 399.20001220703125,
                "High": 399.20001220703125,
                "Low": 399.0400085449219,
                "Close": 399.08428955078125,
                "Volume": 19304,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450140,
                "Open": 399.0400085449219,
                "High": 399.1199951171875,
                "Low": 398.9800109863281,
                "Close": 399.04998779296875,
                "Volume": 39132,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450200,
                "Open": 399.0400085449219,
                "High": 399.0899963378906,
                "Low": 398.9700012207031,
                "Close": 399.0299987792969,
                "Volume": 70814,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450260,
                "Open": 399.0199890136719,
                "High": 399.05999755859375,
                "Low": 398.8900146484375,
                "Close": 399.0498962402344,
                "Volume": 74409,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450320,
                "Open": 399.0400085449219,
                "High": 399.2170104980469,
                "Low": 398.9862976074219,
                "Close": 399.2170104980469,
                "Volume": 26014,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450380,
                "Open": 399.2200012207031,
                "High": 399.4490051269531,
                "Low": 399.2099914550781,
                "Close": 399.260009765625,
                "Volume": 34857,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450440,
                "Open": 399.260009765625,
                "High": 399.3999938964844,
                "Low": 399.2200012207031,
                "Close": 399.3900146484375,
                "Volume": 33229,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450500,
                "Open": 399.4100036621094,
                "High": 399.4100036621094,
                "Low": 399.2099914550781,
                "Close": 399.2439880371094,
                "Volume": 30846,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450560,
                "Open": 399.3299865722656,
                "High": 399.44000244140625,
                "Low": 399.239990234375,
                "Close": 399.239990234375,
                "Volume": 16347,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450620,
                "Open": 399.19000244140625,
                "High": 399.19000244140625,
                "Low": 398.7900085449219,
                "Close": 398.7900085449219,
                "Volume": 42424,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450680,
                "Open": 398.79998779296875,
                "High": 398.95001220703125,
                "Low": 398.6300048828125,
                "Close": 398.82000732421875,
                "Volume": 48282,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450740,
                "Open": 398.8299865722656,
                "High": 398.8299865722656,
                "Low": 398.4800109863281,
                "Close": 398.6050109863281,
                "Volume": 30922,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450800,
                "Open": 398.58380126953125,
                "High": 398.8299865722656,
                "Low": 398.58380126953125,
                "Close": 398.76708984375,
                "Volume": 28264,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450860,
                "Open": 398.75,
                "High": 399.0899963378906,
                "Low": 398.67999267578125,
                "Close": 399.0899963378906,
                "Volume": 28900,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450920,
                "Open": 399.090087890625,
                "High": 399.4317932128906,
                "Low": 399.0199890136719,
                "Close": 399.4100036621094,
                "Volume": 14284,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708450980,
                "Open": 399.42999267578125,
                "High": 399.489990234375,
                "Low": 399.2900085449219,
                "Close": 399.42401123046875,
                "Volume": 21687,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451040,
                "Open": 399.42999267578125,
                "High": 399.6400146484375,
                "Low": 399.3900146484375,
                "Close": 399.5899963378906,
                "Volume": 17387,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451100,
                "Open": 399.5199890136719,
                "High": 399.67999267578125,
                "Low": 399.5199890136719,
                "Close": 399.5899963378906,
                "Volume": 20309,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451160,
                "Open": 399.57000732421875,
                "High": 399.6099853515625,
                "Low": 399.4259948730469,
                "Close": 399.6099853515625,
                "Volume": 15918,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451220,
                "Open": 399.6099853515625,
                "High": 399.6300048828125,
                "Low": 399.4200134277344,
                "Close": 399.44000244140625,
                "Volume": 10267,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451280,
                "Open": 399.45001220703125,
                "High": 399.55999755859375,
                "Low": 399.3900146484375,
                "Close": 399.45001220703125,
                "Volume": 12191,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451340,
                "Open": 399.44000244140625,
                "High": 399.44000244140625,
                "Low": 399.2799987792969,
                "Close": 399.3016052246094,
                "Volume": 18690,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451400,
                "Open": 399.2875061035156,
                "High": 399.345703125,
                "Low": 399.1400146484375,
                "Close": 399.3037109375,
                "Volume": 13911,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451460,
                "Open": 399.2904052734375,
                "High": 399.489990234375,
                "Low": 399.2904052734375,
                "Close": 399.4800109863281,
                "Volume": 17327,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451520,
                "Open": 399.44000244140625,
                "High": 399.6499938964844,
                "Low": 399.42999267578125,
                "Close": 399.635009765625,
                "Volume": 14703,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451580,
                "Open": 399.6199951171875,
                "High": 399.69000244140625,
                "Low": 399.5899963378906,
                "Close": 399.66009521484375,
                "Volume": 40777,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451640,
                "Open": 399.6300048828125,
                "High": 399.6600036621094,
                "Low": 399.5299987792969,
                "Close": 399.6099853515625,
                "Volume": 24142,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451700,
                "Open": 399.6099853515625,
                "High": 399.81988525390625,
                "Low": 399.6099853515625,
                "Close": 399.80499267578125,
                "Volume": 20325,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451760,
                "Open": 399.79449462890625,
                "High": 399.79449462890625,
                "Low": 399.5899963378906,
                "Close": 399.6700134277344,
                "Volume": 15488,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451820,
                "Open": 399.67999267578125,
                "High": 399.760009765625,
                "Low": 399.5400085449219,
                "Close": 399.69000244140625,
                "Volume": 28571,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451880,
                "Open": 399.7099914550781,
                "High": 399.80999755859375,
                "Low": 399.6101989746094,
                "Close": 399.69000244140625,
                "Volume": 18919,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708451940,
                "Open": 399.67999267578125,
                "High": 399.7799987792969,
                "Low": 399.510009765625,
                "Close": 399.5799865722656,
                "Volume": 24777,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452000,
                "Open": 399.63079833984375,
                "High": 399.79998779296875,
                "Low": 399.63079833984375,
                "Close": 399.7300109863281,
                "Volume": 14214,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452060,
                "Open": 399.7099914550781,
                "High": 399.79998779296875,
                "Low": 399.6893005371094,
                "Close": 399.7749938964844,
                "Volume": 9818,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452120,
                "Open": 399.760009765625,
                "High": 399.760009765625,
                "Low": 399.489990234375,
                "Close": 399.590087890625,
                "Volume": 16665,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452180,
                "Open": 399.5899963378906,
                "High": 399.6400146484375,
                "Low": 399.4700012207031,
                "Close": 399.510009765625,
                "Volume": 9865,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452240,
                "Open": 399.510009765625,
                "High": 399.5400085449219,
                "Low": 399.3999938964844,
                "Close": 399.510009765625,
                "Volume": 17311,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452300,
                "Open": 399.4627990722656,
                "High": 399.5299987792969,
                "Low": 399.3299865722656,
                "Close": 399.5299987792969,
                "Volume": 15642,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452360,
                "Open": 399.489990234375,
                "High": 399.6199951171875,
                "Low": 399.44000244140625,
                "Close": 399.5299987792969,
                "Volume": 12163,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452420,
                "Open": 399.5350036621094,
                "High": 399.5400085449219,
                "Low": 399.426513671875,
                "Close": 399.452392578125,
                "Volume": 16315,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452480,
                "Open": 399.489990234375,
                "High": 399.55999755859375,
                "Low": 399.4515075683594,
                "Close": 399.5599060058594,
                "Volume": 16618,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452540,
                "Open": 399.510009765625,
                "High": 399.65618896484375,
                "Low": 399.489990234375,
                "Close": 399.58740234375,
                "Volume": 13482,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452600,
                "Open": 399.5799865722656,
                "High": 399.6700134277344,
                "Low": 399.57818603515625,
                "Close": 399.6300048828125,
                "Volume": 10151,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452660,
                "Open": 399.625,
                "High": 399.6700134277344,
                "Low": 399.5400085449219,
                "Close": 399.57501220703125,
                "Volume": 17879,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452720,
                "Open": 399.56500244140625,
                "High": 399.6400146484375,
                "Low": 399.5400085449219,
                "Close": 399.55999755859375,
                "Volume": 15129,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452780,
                "Open": 399.5199890136719,
                "High": 399.7799987792969,
                "Low": 399.45001220703125,
                "Close": 399.698486328125,
                "Volume": 27965,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452840,
                "Open": 399.70001220703125,
                "High": 399.7200012207031,
                "Low": 399.6199951171875,
                "Close": 399.6600036621094,
                "Volume": 10719,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452900,
                "Open": 399.6549987792969,
                "High": 399.6549987792969,
                "Low": 399.4200134277344,
                "Close": 399.42999267578125,
                "Volume": 14038,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708452960,
                "Open": 399.44000244140625,
                "High": 399.5199890136719,
                "Low": 399.30999755859375,
                "Close": 399.5199890136719,
                "Volume": 19030,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453020,
                "Open": 399.50518798828125,
                "High": 399.5299072265625,
                "Low": 399.40008544921875,
                "Close": 399.4801025390625,
                "Volume": 14080,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453080,
                "Open": 399.4800109863281,
                "High": 399.5198974609375,
                "Low": 399.3800048828125,
                "Close": 399.5,
                "Volume": 23637,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453140,
                "Open": 399.4800109863281,
                "High": 399.7799987792969,
                "Low": 399.4800109863281,
                "Close": 399.7333068847656,
                "Volume": 16471,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453200,
                "Open": 399.7699890136719,
                "High": 400.0400085449219,
                "Low": 399.739990234375,
                "Close": 400.0249938964844,
                "Volume": 36500,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453260,
                "Open": 400.0199890136719,
                "High": 400.29998779296875,
                "Low": 400.0,
                "Close": 400.29998779296875,
                "Volume": 24364,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453320,
                "Open": 400.29998779296875,
                "High": 400.5,
                "Low": 400.2200012207031,
                "Close": 400.5,
                "Volume": 49976,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453380,
                "Open": 400.4800109863281,
                "High": 400.8399963378906,
                "Low": 400.4667053222656,
                "Close": 400.739990234375,
                "Volume": 40247,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453440,
                "Open": 400.739990234375,
                "High": 400.95001220703125,
                "Low": 400.739990234375,
                "Close": 400.7699890136719,
                "Volume": 27674,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453500,
                "Open": 400.7550048828125,
                "High": 400.7900085449219,
                "Low": 400.5400085449219,
                "Close": 400.5400085449219,
                "Volume": 21333,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453560,
                "Open": 400.5249938964844,
                "High": 400.5299987792969,
                "Low": 400.19000244140625,
                "Close": 400.19000244140625,
                "Volume": 21574,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453620,
                "Open": 400.1860046386719,
                "High": 400.1860046386719,
                "Low": 399.5899963378906,
                "Close": 399.67999267578125,
                "Volume": 34100,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453680,
                "Open": 399.6780090332031,
                "High": 399.7099914550781,
                "Low": 399.489990234375,
                "Close": 399.489990234375,
                "Volume": 20735,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453740,
                "Open": 399.55999755859375,
                "High": 399.70001220703125,
                "Low": 399.5072937011719,
                "Close": 399.6600036621094,
                "Volume": 15830,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453800,
                "Open": 399.6221008300781,
                "High": 399.7699890136719,
                "Low": 399.54998779296875,
                "Close": 399.6099853515625,
                "Volume": 17195,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453860,
                "Open": 399.635009765625,
                "High": 399.92498779296875,
                "Low": 399.6099853515625,
                "Close": 399.7900085449219,
                "Volume": 16083,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453920,
                "Open": 399.8299865722656,
                "High": 399.989990234375,
                "Low": 399.82000732421875,
                "Close": 399.840087890625,
                "Volume": 416086,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708453980,
                "Open": 399.8500061035156,
                "High": 399.94329833984375,
                "Low": 399.7900085449219,
                "Close": 399.8599853515625,
                "Volume": 16679,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454040,
                "Open": 399.8699951171875,
                "High": 400.1000061035156,
                "Low": 399.79998779296875,
                "Close": 400.0426025390625,
                "Volume": 27836,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454100,
                "Open": 400.0199890136719,
                "High": 400.1499938964844,
                "Low": 399.9977111816406,
                "Close": 400.010009765625,
                "Volume": 16742,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454160,
                "Open": 400.0199890136719,
                "High": 400.07989501953125,
                "Low": 399.885986328125,
                "Close": 399.885986328125,
                "Volume": 20380,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454220,
                "Open": 399.9200134277344,
                "High": 400.0799865722656,
                "Low": 399.9200134277344,
                "Close": 400.010009765625,
                "Volume": 14877,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454280,
                "Open": 400.05999755859375,
                "High": 400.1449890136719,
                "Low": 399.9601135253906,
                "Close": 399.9601135253906,
                "Volume": 13527,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454340,
                "Open": 399.9599914550781,
                "High": 400.17999267578125,
                "Low": 399.9549865722656,
                "Close": 400.1600036621094,
                "Volume": 13530,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454400,
                "Open": 400.1401062011719,
                "High": 400.3399963378906,
                "Low": 400.0799865722656,
                "Close": 400.30999755859375,
                "Volume": 16970,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454460,
                "Open": 400.3399963378906,
                "High": 400.5190124511719,
                "Low": 400.28009033203125,
                "Close": 400.4599914550781,
                "Volume": 19981,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454520,
                "Open": 400.4670104980469,
                "High": 400.6098937988281,
                "Low": 400.42010498046875,
                "Close": 400.4700012207031,
                "Volume": 19628,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454580,
                "Open": 400.4700012207031,
                "High": 400.5799865722656,
                "Low": 400.3399963378906,
                "Close": 400.3699951171875,
                "Volume": 11130,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454640,
                "Open": 400.3800048828125,
                "High": 400.54901123046875,
                "Low": 400.33551025390625,
                "Close": 400.47491455078125,
                "Volume": 14073,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454700,
                "Open": 400.44000244140625,
                "High": 400.54998779296875,
                "Low": 400.40301513671875,
                "Close": 400.5,
                "Volume": 314932,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454760,
                "Open": 400.5,
                "High": 400.5,
                "Low": 400.3999938964844,
                "Close": 400.44000244140625,
                "Volume": 9818,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454820,
                "Open": 400.4303894042969,
                "High": 400.4649963378906,
                "Low": 400.2699890136719,
                "Close": 400.28448486328125,
                "Volume": 14794,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454880,
                "Open": 400.2900085449219,
                "High": 400.4200134277344,
                "Low": 400.2900085449219,
                "Close": 400.39129638671875,
                "Volume": 13638,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708454940,
                "Open": 400.3699951171875,
                "High": 400.45001220703125,
                "Low": 400.2699890136719,
                "Close": 400.30999755859375,
                "Volume": 10906,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455000,
                "Open": 400.3299865722656,
                "High": 400.3299865722656,
                "Low": 400.16558837890625,
                "Close": 400.2099914550781,
                "Volume": 14016,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455060,
                "Open": 400.2200012207031,
                "High": 400.57000732421875,
                "Low": 400.2099914550781,
                "Close": 400.5,
                "Volume": 21734,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455120,
                "Open": 400.502685546875,
                "High": 400.5400085449219,
                "Low": 400.40008544921875,
                "Close": 400.44000244140625,
                "Volume": 16242,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455180,
                "Open": 400.4421081542969,
                "High": 400.45001220703125,
                "Low": 400.3399963378906,
                "Close": 400.3699951171875,
                "Volume": 9810,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455240,
                "Open": 400.3800048828125,
                "High": 400.3800048828125,
                "Low": 400.25628662109375,
                "Close": 400.2799987792969,
                "Volume": 10993,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455300,
                "Open": 400.260009765625,
                "High": 400.44000244140625,
                "Low": 400.260009765625,
                "Close": 400.42999267578125,
                "Volume": 9175,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455360,
                "Open": 400.45001220703125,
                "High": 400.6300048828125,
                "Low": 400.4200134277344,
                "Close": 400.5249938964844,
                "Volume": 20064,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455420,
                "Open": 400.5,
                "High": 400.54998779296875,
                "Low": 400.44500732421875,
                "Close": 400.54998779296875,
                "Volume": 11603,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455480,
                "Open": 400.5799865722656,
                "High": 400.69000244140625,
                "Low": 400.489990234375,
                "Close": 400.5617980957031,
                "Volume": 11986,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455540,
                "Open": 400.54998779296875,
                "High": 400.6199951171875,
                "Low": 400.5144958496094,
                "Close": 400.5840148925781,
                "Volume": 9863,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455600,
                "Open": 400.5899963378906,
                "High": 400.7200012207031,
                "Low": 400.5199890136719,
                "Close": 400.54998779296875,
                "Volume": 18253,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455660,
                "Open": 400.57000732421875,
                "High": 400.6199951171875,
                "Low": 400.44000244140625,
                "Close": 400.5799865722656,
                "Volume": 19102,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455720,
                "Open": 400.6000061035156,
                "High": 400.6000061035156,
                "Low": 400.3900146484375,
                "Close": 400.3931884765625,
                "Volume": 12801,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455780,
                "Open": 400.44000244140625,
                "High": 400.489990234375,
                "Low": 400.20001220703125,
                "Close": 400.25909423828125,
                "Volume": 11624,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455840,
                "Open": 400.260009765625,
                "High": 400.3500061035156,
                "Low": 400.17999267578125,
                "Close": 400.20001220703125,
                "Volume": 10440,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455900,
                "Open": 400.21270751953125,
                "High": 400.3999938964844,
                "Low": 400.17999267578125,
                "Close": 400.3699951171875,
                "Volume": 41077,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708455960,
                "Open": 400.3399963378906,
                "High": 400.5,
                "Low": 400.2799987792969,
                "Close": 400.5,
                "Volume": 14283,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456020,
                "Open": 400.5199890136719,
                "High": 400.6099853515625,
                "Low": 400.4779968261719,
                "Close": 400.54998779296875,
                "Volume": 14285,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456080,
                "Open": 400.5199890136719,
                "High": 400.5799865722656,
                "Low": 400.4700012207031,
                "Close": 400.5400085449219,
                "Volume": 10963,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456140,
                "Open": 400.54998779296875,
                "High": 400.7593078613281,
                "Low": 400.5400085449219,
                "Close": 400.7593078613281,
                "Volume": 21177,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456200,
                "Open": 400.7799987792969,
                "High": 400.875,
                "Low": 400.75,
                "Close": 400.7966003417969,
                "Volume": 23211,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456260,
                "Open": 400.7799987792969,
                "High": 400.9046936035156,
                "Low": 400.75,
                "Close": 400.8599853515625,
                "Volume": 25150,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456320,
                "Open": 400.8599853515625,
                "High": 401.14990234375,
                "Low": 400.8599853515625,
                "Close": 401.07000732421875,
                "Volume": 46360,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456380,
                "Open": 401.0400085449219,
                "High": 401.04010009765625,
                "Low": 400.79998779296875,
                "Close": 400.8399963378906,
                "Volume": 17079,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456440,
                "Open": 400.8500061035156,
                "High": 400.94000244140625,
                "Low": 400.835693359375,
                "Close": 400.835693359375,
                "Volume": 13208,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456500,
                "Open": 400.8500061035156,
                "High": 400.8500061035156,
                "Low": 400.4700012207031,
                "Close": 400.4855041503906,
                "Volume": 17879,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456560,
                "Open": 400.4800109863281,
                "High": 400.4800109863281,
                "Low": 400.25,
                "Close": 400.2900085449219,
                "Volume": 28393,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456620,
                "Open": 400.2799987792969,
                "High": 400.32000732421875,
                "Low": 400.1499938964844,
                "Close": 400.20001220703125,
                "Volume": 42247,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456680,
                "Open": 400.2099914550781,
                "High": 400.510009765625,
                "Low": 400.1650085449219,
                "Close": 400.510009765625,
                "Volume": 12109,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456740,
                "Open": 400.4800109863281,
                "High": 401.05999755859375,
                "Low": 400.4800109863281,
                "Close": 400.9599914550781,
                "Volume": 31518,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456800,
                "Open": 400.9100036621094,
                "High": 400.92388916015625,
                "Low": 400.68499755859375,
                "Close": 400.7699890136719,
                "Volume": 21658,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456860,
                "Open": 400.7640075683594,
                "High": 400.8500061035156,
                "Low": 400.6600036621094,
                "Close": 400.6700134277344,
                "Volume": 15521,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456920,
                "Open": 400.7049865722656,
                "High": 400.760009765625,
                "Low": 400.3599853515625,
                "Close": 400.3999938964844,
                "Volume": 19404,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708456980,
                "Open": 400.3399963378906,
                "High": 400.5,
                "Low": 400.30999755859375,
                "Close": 400.489990234375,
                "Volume": 17933,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457040,
                "Open": 400.44000244140625,
                "High": 400.5299987792969,
                "Low": 400.3699951171875,
                "Close": 400.385986328125,
                "Volume": 14054,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457100,
                "Open": 400.3949890136719,
                "High": 400.42999267578125,
                "Low": 400.1700134277344,
                "Close": 400.2699890136719,
                "Volume": 15236,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457160,
                "Open": 400.30999755859375,
                "High": 400.639892578125,
                "Low": 400.29998779296875,
                "Close": 400.6000061035156,
                "Volume": 10587,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457220,
                "Open": 400.5400085449219,
                "High": 400.79998779296875,
                "Low": 400.5050048828125,
                "Close": 400.7860107421875,
                "Volume": 10759,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457280,
                "Open": 400.7950134277344,
                "High": 400.876708984375,
                "Low": 400.760009765625,
                "Close": 400.8699951171875,
                "Volume": 13084,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457340,
                "Open": 400.8500061035156,
                "High": 401.0,
                "Low": 400.82000732421875,
                "Close": 400.989990234375,
                "Volume": 27469,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457400,
                "Open": 400.9700012207031,
                "High": 401.0400085449219,
                "Low": 400.9049987792969,
                "Close": 400.94000244140625,
                "Volume": 26270,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457460,
                "Open": 400.9100036621094,
                "High": 400.9599914550781,
                "Low": 400.7699890136719,
                "Close": 400.8699951171875,
                "Volume": 14884,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457520,
                "Open": 400.9100036621094,
                "High": 401.0199890136719,
                "Low": 400.8299865722656,
                "Close": 400.9100036621094,
                "Volume": 20771,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457580,
                "Open": 400.92999267578125,
                "High": 400.9700012207031,
                "Low": 400.5799865722656,
                "Close": 400.6099853515625,
                "Volume": 12446,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457640,
                "Open": 400.6300048828125,
                "High": 400.7161865234375,
                "Low": 400.6199951171875,
                "Close": 400.6199951171875,
                "Volume": 19041,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457700,
                "Open": 400.6000061035156,
                "High": 400.80999755859375,
                "Low": 400.6000061035156,
                "Close": 400.760009765625,
                "Volume": 22885,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457760,
                "Open": 400.760009765625,
                "High": 400.9599914550781,
                "Low": 400.7099914550781,
                "Close": 400.8699951171875,
                "Volume": 13192,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457820,
                "Open": 400.8479919433594,
                "High": 401.0,
                "Low": 400.8299865722656,
                "Close": 400.8399963378906,
                "Volume": 15442,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457880,
                "Open": 400.8500061035156,
                "High": 400.989990234375,
                "Low": 400.8299865722656,
                "Close": 400.9849853515625,
                "Volume": 16355,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708457940,
                "Open": 400.92999267578125,
                "High": 401.07000732421875,
                "Low": 400.90008544921875,
                "Close": 400.9700012207031,
                "Volume": 12266,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458000,
                "Open": 400.989990234375,
                "High": 401.1000061035156,
                "Low": 400.9700012207031,
                "Close": 401.05999755859375,
                "Volume": 17507,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458060,
                "Open": 401.0799865722656,
                "High": 401.31988525390625,
                "Low": 401.05999755859375,
                "Close": 401.29998779296875,
                "Volume": 29883,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458120,
                "Open": 401.32000732421875,
                "High": 401.4200134277344,
                "Low": 401.19000244140625,
                "Close": 401.4200134277344,
                "Volume": 18680,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458180,
                "Open": 401.3699951171875,
                "High": 401.3699951171875,
                "Low": 401.19000244140625,
                "Close": 401.2049865722656,
                "Volume": 27419,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458240,
                "Open": 401.2200012207031,
                "High": 401.2200012207031,
                "Low": 401.1300048828125,
                "Close": 401.1600036621094,
                "Volume": 13750,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458300,
                "Open": 401.1099853515625,
                "High": 401.3599853515625,
                "Low": 401.07000732421875,
                "Close": 401.2701110839844,
                "Volume": 24473,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458360,
                "Open": 401.2799987792969,
                "High": 401.2799987792969,
                "Low": 401.1400146484375,
                "Close": 401.1400146484375,
                "Volume": 20507,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458420,
                "Open": 401.1400146484375,
                "High": 401.3699951171875,
                "Low": 401.1400146484375,
                "Close": 401.2799987792969,
                "Volume": 18785,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458480,
                "Open": 401.2900085449219,
                "High": 401.5199890136719,
                "Low": 401.2900085449219,
                "Close": 401.4700012207031,
                "Volume": 31799,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458540,
                "Open": 401.4700012207031,
                "High": 401.55999755859375,
                "Low": 401.360107421875,
                "Close": 401.55999755859375,
                "Volume": 18342,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458600,
                "Open": 401.5386962890625,
                "High": 401.6300048828125,
                "Low": 401.4100036621094,
                "Close": 401.4599914550781,
                "Volume": 32212,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458660,
                "Open": 401.4800109863281,
                "High": 401.5050048828125,
                "Low": 401.29998779296875,
                "Close": 401.3550109863281,
                "Volume": 20965,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458720,
                "Open": 401.3399963378906,
                "High": 401.4200134277344,
                "Low": 401.29998779296875,
                "Close": 401.3450012207031,
                "Volume": 17157,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458780,
                "Open": 401.34619140625,
                "High": 401.4049987792969,
                "Low": 401.260009765625,
                "Close": 401.385009765625,
                "Volume": 24568,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458840,
                "Open": 401.3999938964844,
                "High": 401.45001220703125,
                "Low": 401.2699890136719,
                "Close": 401.2799987792969,
                "Volume": 13900,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458900,
                "Open": 401.29998779296875,
                "High": 401.57000732421875,
                "Low": 401.2799987792969,
                "Close": 401.5,
                "Volume": 35220,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708458960,
                "Open": 401.5199890136719,
                "High": 401.5799865722656,
                "Low": 401.3699951171875,
                "Close": 401.4200134277344,
                "Volume": 31593,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459020,
                "Open": 401.3999938964844,
                "High": 401.45001220703125,
                "Low": 401.3280029296875,
                "Close": 401.45001220703125,
                "Volume": 15329,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459080,
                "Open": 401.4259948730469,
                "High": 401.6300048828125,
                "Low": 401.4068908691406,
                "Close": 401.5199890136719,
                "Volume": 17254,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459140,
                "Open": 401.55999755859375,
                "High": 401.6000061035156,
                "Low": 401.5199890136719,
                "Close": 401.5799865722656,
                "Volume": 15278,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459200,
                "Open": 401.6199951171875,
                "High": 401.7200012207031,
                "Low": 401.5299987792969,
                "Close": 401.6099853515625,
                "Volume": 20831,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459260,
                "Open": 401.6199951171875,
                "High": 401.6199951171875,
                "Low": 401.5199890136719,
                "Close": 401.54998779296875,
                "Volume": 13912,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459320,
                "Open": 401.57000732421875,
                "High": 401.57000732421875,
                "Low": 401.2900085449219,
                "Close": 401.29998779296875,
                "Volume": 16987,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459380,
                "Open": 401.3399963378906,
                "High": 401.3399963378906,
                "Low": 401.1499938964844,
                "Close": 401.20001220703125,
                "Volume": 18843,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459440,
                "Open": 401.1700134277344,
                "High": 401.3900146484375,
                "Low": 401.0360107421875,
                "Close": 401.30999755859375,
                "Volume": 35106,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459500,
                "Open": 401.2900085449219,
                "High": 401.54998779296875,
                "Low": 401.2900085449219,
                "Close": 401.489990234375,
                "Volume": 18554,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459560,
                "Open": 401.5,
                "High": 401.6300048828125,
                "Low": 401.45001220703125,
                "Close": 401.6000061035156,
                "Volume": 18797,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459620,
                "Open": 401.5899963378906,
                "High": 401.6099853515625,
                "Low": 401.3900146484375,
                "Close": 401.44000244140625,
                "Volume": 15465,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459680,
                "Open": 401.4371032714844,
                "High": 401.6199951171875,
                "Low": 401.43499755859375,
                "Close": 401.5624084472656,
                "Volume": 15567,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459740,
                "Open": 401.57000732421875,
                "High": 401.7358093261719,
                "Low": 401.5101013183594,
                "Close": 401.7298889160156,
                "Volume": 27889,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459800,
                "Open": 401.7200012207031,
                "High": 401.8699951171875,
                "Low": 401.7200012207031,
                "Close": 401.82989501953125,
                "Volume": 27023,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459860,
                "Open": 401.8299865722656,
                "High": 401.8500061035156,
                "Low": 401.55999755859375,
                "Close": 401.57501220703125,
                "Volume": 28614,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459920,
                "Open": 401.6000061035156,
                "High": 401.7200012207031,
                "Low": 401.6000061035156,
                "Close": 401.67999267578125,
                "Volume": 38450,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708459980,
                "Open": 401.6600036621094,
                "High": 401.73968505859375,
                "Low": 401.4849853515625,
                "Close": 401.5400085449219,
                "Volume": 28582,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460040,
                "Open": 401.57000732421875,
                "High": 401.6000061035156,
                "Low": 401.4150085449219,
                "Close": 401.4230041503906,
                "Volume": 13438,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460100,
                "Open": 401.3999938964844,
                "High": 401.4700012207031,
                "Low": 401.2699890136719,
                "Close": 401.4110107421875,
                "Volume": 28199,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460160,
                "Open": 401.44000244140625,
                "High": 401.489990234375,
                "Low": 401.3800048828125,
                "Close": 401.489990234375,
                "Volume": 28030,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460220,
                "Open": 401.4784851074219,
                "High": 401.6099853515625,
                "Low": 401.46258544921875,
                "Close": 401.4949951171875,
                "Volume": 17056,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460280,
                "Open": 401.5199890136719,
                "High": 401.57501220703125,
                "Low": 401.4601135253906,
                "Close": 401.57501220703125,
                "Volume": 121939,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460340,
                "Open": 401.5799865722656,
                "High": 401.58099365234375,
                "Low": 401.45001220703125,
                "Close": 401.45001220703125,
                "Volume": 39475,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460400,
                "Open": 401.489990234375,
                "High": 401.61639404296875,
                "Low": 401.489990234375,
                "Close": 401.5299987792969,
                "Volume": 22971,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460460,
                "Open": 401.5476989746094,
                "High": 401.6700134277344,
                "Low": 401.5476989746094,
                "Close": 401.6099853515625,
                "Volume": 17670,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460520,
                "Open": 401.6300048828125,
                "High": 402.7799987792969,
                "Low": 401.54998779296875,
                "Close": 401.92999267578125,
                "Volume": 212271,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460580,
                "Open": 401.9100036621094,
                "High": 401.9100036621094,
                "Low": 401.6000061035156,
                "Close": 401.6700134277344,
                "Volume": 30472,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460640,
                "Open": 401.67999267578125,
                "High": 401.82000732421875,
                "Low": 401.6700134277344,
                "Close": 401.739990234375,
                "Volume": 22927,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460700,
                "Open": 401.7550048828125,
                "High": 401.89990234375,
                "Low": 401.7099914550781,
                "Close": 401.8550109863281,
                "Volume": 21761,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460760,
                "Open": 401.80999755859375,
                "High": 401.8999938964844,
                "Low": 401.7099914550781,
                "Close": 401.8299865722656,
                "Volume": 24280,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460820,
                "Open": 401.8399963378906,
                "High": 401.8699951171875,
                "Low": 401.73638916015625,
                "Close": 401.80999755859375,
                "Volume": 21425,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460880,
                "Open": 401.805908203125,
                "High": 401.92498779296875,
                "Low": 401.7900085449219,
                "Close": 401.8297119140625,
                "Volume": 20946,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708460940,
                "Open": 401.8299865722656,
                "High": 401.8399963378906,
                "Low": 401.6499938964844,
                "Close": 401.6606140136719,
                "Volume": 21691,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461000,
                "Open": 401.69000244140625,
                "High": 401.80499267578125,
                "Low": 401.5799865722656,
                "Close": 401.5809020996094,
                "Volume": 39536,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461060,
                "Open": 401.57000732421875,
                "High": 401.5726013183594,
                "Low": 401.3500061035156,
                "Close": 401.3699951171875,
                "Volume": 24762,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461120,
                "Open": 401.364990234375,
                "High": 401.39739990234375,
                "Low": 400.8800048828125,
                "Close": 400.95001220703125,
                "Volume": 72952,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461180,
                "Open": 400.94000244140625,
                "High": 400.989990234375,
                "Low": 400.2300109863281,
                "Close": 400.375,
                "Volume": 85305,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461240,
                "Open": 400.3599853515625,
                "High": 400.6199951171875,
                "Low": 400.2699890136719,
                "Close": 400.5,
                "Volume": 37467,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461300,
                "Open": 400.5199890136719,
                "High": 400.55499267578125,
                "Low": 400.29998779296875,
                "Close": 400.3500061035156,
                "Volume": 39545,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461360,
                "Open": 400.30999755859375,
                "High": 400.70001220703125,
                "Low": 400.29998779296875,
                "Close": 400.55999755859375,
                "Volume": 46365,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461420,
                "Open": 400.5799865722656,
                "High": 400.9599914550781,
                "Low": 400.51580810546875,
                "Close": 400.9599914550781,
                "Volume": 36896,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461480,
                "Open": 400.95001220703125,
                "High": 401.1199951171875,
                "Low": 400.70001220703125,
                "Close": 400.8299865722656,
                "Volume": 56697,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461540,
                "Open": 400.760009765625,
                "High": 400.875,
                "Low": 400.7179870605469,
                "Close": 400.75,
                "Volume": 26587,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461600,
                "Open": 400.7598876953125,
                "High": 400.92999267578125,
                "Low": 400.7099914550781,
                "Close": 400.9115905761719,
                "Volume": 28993,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461660,
                "Open": 400.9049987792969,
                "High": 401.1300048828125,
                "Low": 400.75,
                "Close": 400.75,
                "Volume": 34915,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461720,
                "Open": 400.75,
                "High": 401.0799865722656,
                "Low": 400.7200012207031,
                "Close": 400.9649963378906,
                "Volume": 60663,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461780,
                "Open": 400.989990234375,
                "High": 401.1849060058594,
                "Low": 400.8999938964844,
                "Close": 401.1300048828125,
                "Volume": 38305,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461840,
                "Open": 401.1600036621094,
                "High": 401.20001220703125,
                "Low": 401.0400085449219,
                "Close": 401.1400146484375,
                "Volume": 25102,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461900,
                "Open": 401.1400146484375,
                "High": 401.5199890136719,
                "Low": 401.1000061035156,
                "Close": 401.4700012207031,
                "Volume": 38408,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708461960,
                "Open": 401.4800109863281,
                "High": 401.5450134277344,
                "Low": 401.32000732421875,
                "Close": 401.4800109863281,
                "Volume": 29081,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462020,
                "Open": 401.4800109863281,
                "High": 401.6400146484375,
                "Low": 401.3599853515625,
                "Close": 401.5799865722656,
                "Volume": 31153,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462080,
                "Open": 401.6099853515625,
                "High": 401.6499938964844,
                "Low": 401.4093933105469,
                "Close": 401.4700012207031,
                "Volume": 33412,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462140,
                "Open": 401.43499755859375,
                "High": 401.4800109863281,
                "Low": 401.2301025390625,
                "Close": 401.45001220703125,
                "Volume": 45560,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462200,
                "Open": 401.3800048828125,
                "High": 401.5199890136719,
                "Low": 401.1499938964844,
                "Close": 401.4599914550781,
                "Volume": 81211,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462260,
                "Open": 401.4800109863281,
                "High": 401.7149963378906,
                "Low": 401.4100036621094,
                "Close": 401.4100036621094,
                "Volume": 51165,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462320,
                "Open": 401.4100036621094,
                "High": 401.510009765625,
                "Low": 401.29998779296875,
                "Close": 401.49371337890625,
                "Volume": 43769,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462380,
                "Open": 401.489990234375,
                "High": 401.5,
                "Low": 401.3699951171875,
                "Close": 401.4219970703125,
                "Volume": 52667,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462440,
                "Open": 401.3999938964844,
                "High": 401.79998779296875,
                "Low": 401.3500061035156,
                "Close": 401.7701110839844,
                "Volume": 87783,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462500,
                "Open": 401.7699890136719,
                "High": 401.94000244140625,
                "Low": 401.4599914550781,
                "Close": 401.54998779296875,
                "Volume": 116346,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462560,
                "Open": 401.57000732421875,
                "High": 401.95001220703125,
                "Low": 401.57000732421875,
                "Close": 401.8399963378906,
                "Volume": 76058,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462620,
                "Open": 401.8500061035156,
                "High": 401.94500732421875,
                "Low": 401.75,
                "Close": 401.8399963378906,
                "Volume": 81976,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462680,
                "Open": 401.8200988769531,
                "High": 402.20001220703125,
                "Low": 401.8200988769531,
                "Close": 402.19000244140625,
                "Volume": 189210,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708462740,
                "Open": 402.17999267578125,
                "High": 402.989990234375,
                "Low": 402.17999267578125,
                "Close": 402.92999267578125,
                "Volume": 594944,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            }
        ]
    }
}
"""
#endif
