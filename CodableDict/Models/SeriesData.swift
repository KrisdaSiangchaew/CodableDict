//
//  SeriesData.swift
//  CodableDict
//
//  Created by Kris on 19/6/2566 BE.
//

import Foundation

struct SeriesData: Decodable {
    var open: String?
    var high: String?
    var low: String?
    var close: String?
    var adjustedClose: String?
    var volume: String?
    var dividendAmount: String?
    var splitCoefficient: String?
    
    enum CodingKeys: String, CodingKey {
        case open = "1. open"
        case high = "2. high"
        case low = "3. low"
        case close = "4. close"
        case adjustedClose = "5. adjusted close"
        case volume = "6. volume"
        case dividendAmount = "7. dividend mmount"
        case splitCoefficient = "8. split coefficient"
    }
}

struct SeriesDataByDate: Decodable {
    var date: String
    var seriesData: SeriesData
}

struct SeriesDataByTimeSeries: Decodable {
    let seriesDataByDate: SeriesDataByDate?
    
    enum CodingKeys: String, CodingKey {
        case header = "Time Series (Daily)"
    }
    
    enum ResponseKeys: String, CodingKeys {
        case date = "2023-06-16"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let response = try container.decodeIfPresent(SeriesData.self, forKey: .date)
    }
}
