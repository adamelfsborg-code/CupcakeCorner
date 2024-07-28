//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Adam Elfsborg on 2024-07-28.
//

import SwiftUI

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
    var name = "Adam"
}


struct ContentView: View {
    var body: some View {
        VStack {
            Button("Tap me", action: encodeMe)
        }
    }
    
    func encodeMe() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        print(str)
    }
    
  
}

#Preview {
    ContentView()
}
