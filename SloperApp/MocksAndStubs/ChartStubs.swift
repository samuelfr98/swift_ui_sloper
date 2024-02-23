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
            "regularMarketPrice": 410.5175,
            "previousClose": 411.65,
            "gmtOffSetMilliseconds": -18000000,
            "regularTradingPeriodStartDate": 1708698600,
            "regularTradingPeriodEndDate": 1708722000
        },
        "indicators": [
            {
                "Date": 1708698600,
                "Open": 415.6700134277344,
                "High": 415.8599853515625,
                "Low": 414.3299865722656,
                "Close": 414.6600036621094,
                "Volume": 1024573,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708698660,
                "Open": 414.69000244140625,
                "High": 415.42999267578125,
                "Low": 414.5,
                "Close": 415.1099853515625,
                "Volume": 102929,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708698720,
                "Open": 415.1000061035156,
                "High": 415.1700134277344,
                "Low": 414.6600036621094,
                "Close": 415.0201110839844,
                "Volume": 84709,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708698780,
                "Open": 415.0299987792969,
                "High": 415.1000061035156,
                "Low": 414.9100036621094,
                "Close": 415.0799865722656,
                "Volume": 85439,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708698840,
                "Open": 415.1000061035156,
                "High": 415.6099853515625,
                "Low": 415.1000061035156,
                "Close": 415.3999938964844,
                "Volume": 88745,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708698900,
                "Open": 415.3800048828125,
                "High": 415.4599914550781,
                "Low": 415.1310119628906,
                "Close": 415.3599853515625,
                "Volume": 89018,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708698960,
                "Open": 415.32000732421875,
                "High": 415.42999267578125,
                "Low": 414.9372863769531,
                "Close": 415.0400085449219,
                "Volume": 89923,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699020,
                "Open": 415.010009765625,
                "High": 415.0799865722656,
                "Low": 414.6300048828125,
                "Close": 414.9100036621094,
                "Volume": 122340,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699080,
                "Open": 414.9100036621094,
                "High": 415.0400085449219,
                "Low": 414.6099853515625,
                "Close": 414.9624938964844,
                "Volume": 80835,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699140,
                "Open": 415.0199890136719,
                "High": 415.260009765625,
                "Low": 414.5199890136719,
                "Close": 414.54510498046875,
                "Volume": 96374,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699200,
                "Open": 414.54998779296875,
                "High": 415.1400146484375,
                "Low": 414.5400085449219,
                "Close": 415.0950012207031,
                "Volume": 81890,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699260,
                "Open": 415.1000061035156,
                "High": 415.3599853515625,
                "Low": 414.80999755859375,
                "Close": 415.34820556640625,
                "Volume": 66753,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699320,
                "Open": 415.3500061035156,
                "High": 415.53131103515625,
                "Low": 414.8399963378906,
                "Close": 414.92999267578125,
                "Volume": 79686,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699380,
                "Open": 414.8999938964844,
                "High": 415.0199890136719,
                "Low": 414.739990234375,
                "Close": 414.7486877441406,
                "Volume": 41904,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699440,
                "Open": 414.739990234375,
                "High": 414.9750061035156,
                "Low": 414.7099914550781,
                "Close": 414.95001220703125,
                "Volume": 46650,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699500,
                "Open": 414.9599914550781,
                "High": 415.3399963378906,
                "Low": 414.9110107421875,
                "Close": 415.0899963378906,
                "Volume": 53814,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699560,
                "Open": 415.1000061035156,
                "High": 415.1300048828125,
                "Low": 414.4700012207031,
                "Close": 414.4949951171875,
                "Volume": 77995,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699620,
                "Open": 414.45001220703125,
                "High": 414.6600036621094,
                "Low": 414.2099914550781,
                "Close": 414.6600036621094,
                "Volume": 69489,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699680,
                "Open": 414.69000244140625,
                "High": 414.739990234375,
                "Low": 414.3800048828125,
                "Close": 414.481689453125,
                "Volume": 42478,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699740,
                "Open": 414.4949951171875,
                "High": 414.49591064453125,
                "Low": 414.2900085449219,
                "Close": 414.4649963378906,
                "Volume": 58834,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699800,
                "Open": 414.4849853515625,
                "High": 414.7200012207031,
                "Low": 414.42999267578125,
                "Close": 414.7200012207031,
                "Volume": 41043,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699860,
                "Open": 414.7099914550781,
                "High": 414.739990234375,
                "Low": 414.5,
                "Close": 414.54998779296875,
                "Volume": 36797,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699920,
                "Open": 414.5299987792969,
                "High": 414.8890075683594,
                "Low": 414.489990234375,
                "Close": 414.8550109863281,
                "Volume": 65542,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708699980,
                "Open": 414.8450012207031,
                "High": 414.95001220703125,
                "Low": 414.75,
                "Close": 414.8399963378906,
                "Volume": 42565,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700040,
                "Open": 414.8299865722656,
                "High": 414.909912109375,
                "Low": 414.6199951171875,
                "Close": 414.69000244140625,
                "Volume": 41551,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700100,
                "Open": 414.70001220703125,
                "High": 414.739990234375,
                "Low": 414.4700012207031,
                "Close": 414.5150146484375,
                "Volume": 55887,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700160,
                "Open": 414.5299987792969,
                "High": 414.5400085449219,
                "Low": 414.04998779296875,
                "Close": 414.0899963378906,
                "Volume": 66482,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700220,
                "Open": 414.0686950683594,
                "High": 414.0686950683594,
                "Low": 413.4200134277344,
                "Close": 413.6400146484375,
                "Volume": 77578,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700280,
                "Open": 413.6300048828125,
                "High": 413.989990234375,
                "Low": 413.5199890136719,
                "Close": 413.5199890136719,
                "Volume": 54608,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700340,
                "Open": 413.5400085449219,
                "High": 414.29998779296875,
                "Low": 413.4800109863281,
                "Close": 414.260009765625,
                "Volume": 63422,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700400,
                "Open": 414.29998779296875,
                "High": 414.30999755859375,
                "Low": 413.4700012207031,
                "Close": 413.5899963378906,
                "Volume": 50805,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700460,
                "Open": 413.4949951171875,
                "High": 413.8349914550781,
                "Low": 413.489990234375,
                "Close": 413.7701110839844,
                "Volume": 44086,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700520,
                "Open": 413.8085021972656,
                "High": 414.0199890136719,
                "Low": 413.739990234375,
                "Close": 413.739990234375,
                "Volume": 32275,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700580,
                "Open": 413.739990234375,
                "High": 414.0849914550781,
                "Low": 413.70001220703125,
                "Close": 413.8659973144531,
                "Volume": 57893,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700640,
                "Open": 413.8500061035156,
                "High": 413.8999938964844,
                "Low": 413.7200012207031,
                "Close": 413.7200012207031,
                "Volume": 51227,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700700,
                "Open": 413.7099914550781,
                "High": 413.7099914550781,
                "Low": 413.3500061035156,
                "Close": 413.4700012207031,
                "Volume": 58883,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700760,
                "Open": 413.4617004394531,
                "High": 413.5,
                "Low": 413.2005920410156,
                "Close": 413.4200134277344,
                "Volume": 41483,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700820,
                "Open": 413.48870849609375,
                "High": 413.48870849609375,
                "Low": 413.19000244140625,
                "Close": 413.2539978027344,
                "Volume": 33342,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700880,
                "Open": 413.2200012207031,
                "High": 413.2200012207031,
                "Low": 412.94000244140625,
                "Close": 413.1099853515625,
                "Volume": 50652,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708700940,
                "Open": 413.1000061035156,
                "High": 413.1300048828125,
                "Low": 412.82000732421875,
                "Close": 412.8599853515625,
                "Volume": 31108,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701000,
                "Open": 412.8349914550781,
                "High": 412.97021484375,
                "Low": 412.6600036621094,
                "Close": 412.9700012207031,
                "Volume": 45014,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701060,
                "Open": 413.0,
                "High": 413.239990234375,
                "Low": 413.0,
                "Close": 413.239990234375,
                "Volume": 39168,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701120,
                "Open": 413.2099914550781,
                "High": 413.2250061035156,
                "Low": 412.875,
                "Close": 412.96649169921875,
                "Volume": 46646,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701180,
                "Open": 412.989990234375,
                "High": 413.1499938964844,
                "Low": 412.94500732421875,
                "Close": 413.0,
                "Volume": 20921,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701240,
                "Open": 412.9700012207031,
                "High": 413.1600036621094,
                "Low": 412.94000244140625,
                "Close": 412.94000244140625,
                "Volume": 31412,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701300,
                "Open": 412.94500732421875,
                "High": 413.0,
                "Low": 412.8500061035156,
                "Close": 412.9200134277344,
                "Volume": 25263,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701360,
                "Open": 412.939697265625,
                "High": 413.0350036621094,
                "Low": 412.8900146484375,
                "Close": 412.93011474609375,
                "Volume": 36327,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701420,
                "Open": 413.0,
                "High": 413.03338623046875,
                "Low": 412.6300048828125,
                "Close": 412.6300048828125,
                "Volume": 49581,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701480,
                "Open": 412.6199951171875,
                "High": 412.6700134277344,
                "Low": 412.42999267578125,
                "Close": 412.6650085449219,
                "Volume": 29352,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701540,
                "Open": 412.67999267578125,
                "High": 413.0,
                "Low": 412.6700134277344,
                "Close": 412.9794921875,
                "Volume": 34109,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701600,
                "Open": 412.95001220703125,
                "High": 413.05999755859375,
                "Low": 412.8599853515625,
                "Close": 412.9049987792969,
                "Volume": 31085,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701660,
                "Open": 412.92498779296875,
                "High": 412.92498779296875,
                "Low": 412.6134948730469,
                "Close": 412.6134948730469,
                "Volume": 26116,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701720,
                "Open": 412.6099853515625,
                "High": 412.6300048828125,
                "Low": 412.3999938964844,
                "Close": 412.5299987792969,
                "Volume": 39573,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701780,
                "Open": 412.5400085449219,
                "High": 412.57000732421875,
                "Low": 412.30999755859375,
                "Close": 412.42999267578125,
                "Volume": 33312,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701840,
                "Open": 412.44000244140625,
                "High": 412.7900085449219,
                "Low": 412.4100036621094,
                "Close": 412.760009765625,
                "Volume": 49067,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701900,
                "Open": 412.7449951171875,
                "High": 413.0799865722656,
                "Low": 412.70001220703125,
                "Close": 412.9100036621094,
                "Volume": 54065,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708701960,
                "Open": 412.9999084472656,
                "High": 413.05999755859375,
                "Low": 412.8900146484375,
                "Close": 413.05999755859375,
                "Volume": 26640,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702020,
                "Open": 413.0299987792969,
                "High": 413.1700134277344,
                "Low": 412.8900146484375,
                "Close": 413.1700134277344,
                "Volume": 47697,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702080,
                "Open": 413.1440124511719,
                "High": 413.2550048828125,
                "Low": 412.9800109863281,
                "Close": 413.05499267578125,
                "Volume": 53747,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702140,
                "Open": 413.0400085449219,
                "High": 413.3645935058594,
                "Low": 412.95001220703125,
                "Close": 412.9800109863281,
                "Volume": 69259,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702200,
                "Open": 412.989990234375,
                "High": 412.989990234375,
                "Low": 412.3900146484375,
                "Close": 412.42999267578125,
                "Volume": 63031,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702260,
                "Open": 412.4200134277344,
                "High": 412.7699890136719,
                "Low": 412.2799987792969,
                "Close": 412.6720886230469,
                "Volume": 52686,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702320,
                "Open": 412.6300964355469,
                "High": 412.8599853515625,
                "Low": 412.57000732421875,
                "Close": 412.6499938964844,
                "Volume": 30791,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702380,
                "Open": 412.6600036621094,
                "High": 412.69000244140625,
                "Low": 412.3149108886719,
                "Close": 412.3500061035156,
                "Volume": 37543,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702440,
                "Open": 412.3699951171875,
                "High": 412.3999938964844,
                "Low": 412.20001220703125,
                "Close": 412.3500061035156,
                "Volume": 41342,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702500,
                "Open": 412.3299865722656,
                "High": 412.3299865722656,
                "Low": 411.8800048828125,
                "Close": 411.92999267578125,
                "Volume": 79453,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702560,
                "Open": 411.9100036621094,
                "High": 411.94000244140625,
                "Low": 411.6199951171875,
                "Close": 411.82501220703125,
                "Volume": 67797,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702620,
                "Open": 411.8500061035156,
                "High": 411.989990234375,
                "Low": 411.75,
                "Close": 411.9100036621094,
                "Volume": 33764,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702680,
                "Open": 411.94000244140625,
                "High": 412.42999267578125,
                "Low": 411.94000244140625,
                "Close": 412.3299865722656,
                "Volume": 31449,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702740,
                "Open": 412.32501220703125,
                "High": 412.375,
                "Low": 412.1650085449219,
                "Close": 412.2900085449219,
                "Volume": 36977,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702800,
                "Open": 412.260009765625,
                "High": 412.5,
                "Low": 412.19000244140625,
                "Close": 412.44500732421875,
                "Volume": 33835,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702860,
                "Open": 412.4700012207031,
                "High": 412.5400085449219,
                "Low": 412.1700134277344,
                "Close": 412.2200012207031,
                "Volume": 37927,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702920,
                "Open": 412.2699890136719,
                "High": 412.3599853515625,
                "Low": 411.7250061035156,
                "Close": 411.760009765625,
                "Volume": 32072,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708702980,
                "Open": 411.7699890136719,
                "High": 411.8114929199219,
                "Low": 411.6000061035156,
                "Close": 411.7099914550781,
                "Volume": 31734,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703040,
                "Open": 411.7099914550781,
                "High": 411.7099914550781,
                "Low": 411.44000244140625,
                "Close": 411.4599914550781,
                "Volume": 47217,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703100,
                "Open": 411.54998779296875,
                "High": 411.9100036621094,
                "Low": 411.49200439453125,
                "Close": 411.9032897949219,
                "Volume": 24766,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703160,
                "Open": 411.9092102050781,
                "High": 411.94000244140625,
                "Low": 411.7101135253906,
                "Close": 411.8299865722656,
                "Volume": 29924,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703220,
                "Open": 411.739990234375,
                "High": 411.8659973144531,
                "Low": 411.41009521484375,
                "Close": 411.5899963378906,
                "Volume": 50299,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703280,
                "Open": 411.6700134277344,
                "High": 411.79998779296875,
                "Low": 411.55999755859375,
                "Close": 411.6520080566406,
                "Volume": 22222,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703340,
                "Open": 411.6700134277344,
                "High": 411.8399963378906,
                "Low": 411.6400146484375,
                "Close": 411.760009765625,
                "Volume": 17624,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703400,
                "Open": 411.760009765625,
                "High": 411.9599914550781,
                "Low": 411.6600036621094,
                "Close": 411.6600036621094,
                "Volume": 21933,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703460,
                "Open": 411.6300048828125,
                "High": 412.3446960449219,
                "Low": 411.6300048828125,
                "Close": 412.3446960449219,
                "Volume": 32080,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703520,
                "Open": 412.3500061035156,
                "High": 412.4049987792969,
                "Low": 411.92498779296875,
                "Close": 412.0199890136719,
                "Volume": 20792,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703580,
                "Open": 412.0299987792969,
                "High": 412.0599060058594,
                "Low": 411.70001220703125,
                "Close": 411.70001220703125,
                "Volume": 29571,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703640,
                "Open": 411.7149963378906,
                "High": 411.81201171875,
                "Low": 411.6700134277344,
                "Close": 411.760009765625,
                "Volume": 19193,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703700,
                "Open": 411.68499755859375,
                "High": 411.8599853515625,
                "Low": 411.55999755859375,
                "Close": 411.5799865722656,
                "Volume": 17651,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703760,
                "Open": 411.5520935058594,
                "High": 411.75,
                "Low": 411.54998779296875,
                "Close": 411.6199951171875,
                "Volume": 21467,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703820,
                "Open": 411.5899963378906,
                "High": 411.5899963378906,
                "Low": 411.2900085449219,
                "Close": 411.32000732421875,
                "Volume": 39911,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703880,
                "Open": 411.3599853515625,
                "High": 411.54998779296875,
                "Low": 411.3299865722656,
                "Close": 411.5050048828125,
                "Volume": 27029,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708703940,
                "Open": 411.4800109863281,
                "High": 411.510009765625,
                "Low": 411.35009765625,
                "Close": 411.4599914550781,
                "Volume": 16209,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704000,
                "Open": 411.3999938964844,
                "High": 411.5404968261719,
                "Low": 411.1600036621094,
                "Close": 411.285888671875,
                "Volume": 24373,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704060,
                "Open": 411.2650146484375,
                "High": 411.3299865722656,
                "Low": 411.1872863769531,
                "Close": 411.2799987792969,
                "Volume": 17504,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704120,
                "Open": 411.30999755859375,
                "High": 411.3599853515625,
                "Low": 411.07501220703125,
                "Close": 411.0899963378906,
                "Volume": 37321,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704180,
                "Open": 411.1300048828125,
                "High": 411.1798095703125,
                "Low": 411.04998779296875,
                "Close": 411.1759948730469,
                "Volume": 21161,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704240,
                "Open": 411.1199951171875,
                "High": 411.1400146484375,
                "Low": 410.5010070800781,
                "Close": 410.5899963378906,
                "Volume": 48665,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704300,
                "Open": 410.57000732421875,
                "High": 410.7699890136719,
                "Low": 410.54998779296875,
                "Close": 410.5997009277344,
                "Volume": 36069,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704360,
                "Open": 410.55999755859375,
                "High": 410.739990234375,
                "Low": 410.5299987792969,
                "Close": 410.5799865722656,
                "Volume": 23876,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704420,
                "Open": 410.5799865722656,
                "High": 410.80999755859375,
                "Low": 410.54998779296875,
                "Close": 410.54998779296875,
                "Volume": 27119,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704480,
                "Open": 410.55499267578125,
                "High": 410.55999755859375,
                "Low": 410.2799987792969,
                "Close": 410.2950134277344,
                "Volume": 63926,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704540,
                "Open": 410.2950134277344,
                "High": 410.3399963378906,
                "Low": 410.20001220703125,
                "Close": 410.2099914550781,
                "Volume": 35429,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704600,
                "Open": 410.2200012207031,
                "High": 410.47198486328125,
                "Low": 410.18499755859375,
                "Close": 410.44000244140625,
                "Volume": 41757,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704660,
                "Open": 410.4200134277344,
                "High": 410.5592041015625,
                "Low": 410.3299865722656,
                "Close": 410.5400085449219,
                "Volume": 24223,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704720,
                "Open": 410.57000732421875,
                "High": 410.6099853515625,
                "Low": 410.3699951171875,
                "Close": 410.3699951171875,
                "Volume": 25709,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704780,
                "Open": 410.3399963378906,
                "High": 410.4100036621094,
                "Low": 410.1099853515625,
                "Close": 410.1300048828125,
                "Volume": 38753,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704840,
                "Open": 410.125,
                "High": 410.44000244140625,
                "Low": 410.0899963378906,
                "Close": 410.3695068359375,
                "Volume": 24414,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704900,
                "Open": 410.30999755859375,
                "High": 410.4200134277344,
                "Low": 410.20458984375,
                "Close": 410.3900146484375,
                "Volume": 28132,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708704960,
                "Open": 410.3999938964844,
                "High": 410.5199890136719,
                "Low": 410.2950134277344,
                "Close": 410.4800109863281,
                "Volume": 40278,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705020,
                "Open": 410.4800109863281,
                "High": 410.6199951171875,
                "Low": 410.3819885253906,
                "Close": 410.6199951171875,
                "Volume": 42689,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705080,
                "Open": 410.6099853515625,
                "High": 410.7799987792969,
                "Low": 410.510009765625,
                "Close": 410.6099853515625,
                "Volume": 33677,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705140,
                "Open": 410.5899963378906,
                "High": 410.69000244140625,
                "Low": 410.43011474609375,
                "Close": 410.44000244140625,
                "Volume": 33608,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705200,
                "Open": 410.42999267578125,
                "High": 410.6499938964844,
                "Low": 410.42999267578125,
                "Close": 410.4515075683594,
                "Volume": 22984,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705260,
                "Open": 410.42999267578125,
                "High": 410.4800109863281,
                "Low": 410.239990234375,
                "Close": 410.260009765625,
                "Volume": 32920,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705320,
                "Open": 410.2651062011719,
                "High": 410.4100036621094,
                "Low": 410.19989013671875,
                "Close": 410.19989013671875,
                "Volume": 22545,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705380,
                "Open": 410.2095031738281,
                "High": 410.28271484375,
                "Low": 410.1499938964844,
                "Close": 410.20001220703125,
                "Volume": 30966,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705440,
                "Open": 410.2250061035156,
                "High": 410.2799987792969,
                "Low": 410.1700134277344,
                "Close": 410.2099914550781,
                "Volume": 20875,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705500,
                "Open": 410.17999267578125,
                "High": 410.30999755859375,
                "Low": 410.1400146484375,
                "Close": 410.30499267578125,
                "Volume": 23139,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705560,
                "Open": 410.3147888183594,
                "High": 410.6600036621094,
                "Low": 410.3147888183594,
                "Close": 410.6199951171875,
                "Volume": 28603,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705620,
                "Open": 410.5899963378906,
                "High": 410.70001220703125,
                "Low": 410.5589904785156,
                "Close": 410.6000061035156,
                "Volume": 19353,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705680,
                "Open": 410.6000061035156,
                "High": 410.6000061035156,
                "Low": 410.52410888671875,
                "Close": 410.6000061035156,
                "Volume": 12432,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705740,
                "Open": 410.6300048828125,
                "High": 410.80999755859375,
                "Low": 410.6199951171875,
                "Close": 410.7300109863281,
                "Volume": 30103,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705800,
                "Open": 410.7699890136719,
                "High": 410.7699890136719,
                "Low": 410.5,
                "Close": 410.55999755859375,
                "Volume": 22258,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705860,
                "Open": 410.54998779296875,
                "High": 410.6400146484375,
                "Low": 410.2799987792969,
                "Close": 410.3638916015625,
                "Volume": 22527,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705920,
                "Open": 410.3599853515625,
                "High": 410.6600036621094,
                "Low": 410.260009765625,
                "Close": 410.6600036621094,
                "Volume": 13045,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708705980,
                "Open": 410.67999267578125,
                "High": 410.8599853515625,
                "Low": 410.67999267578125,
                "Close": 410.7070007324219,
                "Volume": 15512,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706040,
                "Open": 410.70001220703125,
                "High": 410.70001220703125,
                "Low": 410.6000061035156,
                "Close": 410.6099853515625,
                "Volume": 12753,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706100,
                "Open": 410.6000061035156,
                "High": 410.70001220703125,
                "Low": 410.4901123046875,
                "Close": 410.55499267578125,
                "Volume": 26914,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706160,
                "Open": 410.5799865722656,
                "High": 410.5799865722656,
                "Low": 410.44000244140625,
                "Close": 410.489990234375,
                "Volume": 16723,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706220,
                "Open": 410.510009765625,
                "High": 410.6199951171875,
                "Low": 410.4599914550781,
                "Close": 410.4898986816406,
                "Volume": 15044,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706280,
                "Open": 410.4549865722656,
                "High": 410.4549865722656,
                "Low": 410.17498779296875,
                "Close": 410.20001220703125,
                "Volume": 32640,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706340,
                "Open": 410.17999267578125,
                "High": 410.20001220703125,
                "Low": 410.0293884277344,
                "Close": 410.04998779296875,
                "Volume": 28880,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706400,
                "Open": 410.05999755859375,
                "High": 410.1000061035156,
                "Low": 409.9085998535156,
                "Close": 409.92999267578125,
                "Volume": 78371,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706460,
                "Open": 409.94000244140625,
                "High": 410.1499938964844,
                "Low": 409.8454895019531,
                "Close": 409.8454895019531,
                "Volume": 50063,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706520,
                "Open": 409.8550109863281,
                "High": 410.0,
                "Low": 409.7500915527344,
                "Close": 409.7875061035156,
                "Volume": 29520,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706580,
                "Open": 409.7699890136719,
                "High": 409.902587890625,
                "Low": 409.7650146484375,
                "Close": 409.8599853515625,
                "Volume": 17528,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706640,
                "Open": 409.8680114746094,
                "High": 410.0976867675781,
                "Low": 409.8680114746094,
                "Close": 410.0976867675781,
                "Volume": 16366,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            },
            {
                "Date": 1708706700,
                "Open": 410.1000061035156,
                "High": 410.1000061035156,
                "Low": 409.9700012207031,
                "Close": 409.989990234375,
                "Volume": 18876,
                "Dividends": 0.0,
                "Stock Splits": 0.0
            }
        ]
    }
}
"""
#endif
