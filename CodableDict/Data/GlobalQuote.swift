//
//  GlobalQuote.swift
//  CodableDict
//
//  Created by Krisda Siangchaew on 19/6/23.
//
// https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=300135.SHZ&apikey=demo
//

import Foundation

let globalQuoteData =
"""
{
    "Global Quote": {
       "01. symbol": "300135.SHZ",
     "02. open": "2.6800",
       "03. high": "2.7500",
       "04. low": "2.6800",
       "05. price": "2.7300",
       "06. volume": "13461870",
       "07. latest trading day": "2023-06-16",
        "08. previous close": "2.7000",
        "09. change": "0.0300",
        "10. change percent": "1.1111%"
    }
}
""".data(using: .utf8)

//let globalQuoteData =
//"""
//{
//    "Error Message" : "There is an error."
//}
//""".data(using: .utf8)
