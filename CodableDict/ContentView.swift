//
//  ContentView.swift
//  CodableDict
//
//  Created by Krisda Siangchaew on 19/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
            .task {
                DecodingService().decodeGlobalQuoteNestedJSON()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
