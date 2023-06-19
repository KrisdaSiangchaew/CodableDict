//
//  DecodingService.swift
//  CodableDict
//
//  Created by Krisda Siangchaew on 19/6/23.
//

import Foundation

class DecodingService: ObservableObject {
    func decodeGlobalQuoteNestedJSON() {
        do {
            let decodedData = try JSONDecoder().decode(GlobalQuoteNestedJson.self, from: globalQuoteData!)
                print(decodedData)
        } catch {
            print("Error decoding: \(error.localizedDescription)")
        }
    }
}
