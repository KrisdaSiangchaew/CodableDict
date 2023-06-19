//
//  GlobalQuoteNestedJson.swift
//  CodableDict
//
//  Created by Krisda Siangchaew on 19/6/23.
//

import Foundation

struct GlobalQuoteNestedJson: Decodable {
    var symbol: String? = nil
    var open: String? = nil
    var change: String? = nil
    var changePercent: String? = nil
    var errorMessage: String? = nil
    
    enum CodingKeys: String, CodingKey, CaseIterable {
        case response = "Global Quote"
        case error = "Error Message"
        case symbol = "01. symbol"
        case open = "02. open"
        case change = "09. change"
        case changePercent = "10. change percent"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let response = try? container.nestedContainer(keyedBy: CodingKeys.self, forKey: .response) {
            self.symbol = try response.decodeIfPresent(String.self, forKey: .symbol)
            self.change = try response.decodeIfPresent(String.self, forKey: .change)
            self.changePercent = try response.decodeIfPresent(String.self, forKey: .changePercent)
            self.open = try response.decodeIfPresent(String.self, forKey: .open)
        } else if let error = try? container.decodeIfPresent(String.self, forKey: .error) {
            self.errorMessage = error
        } else {
            print("Error")
        }
    }
}
