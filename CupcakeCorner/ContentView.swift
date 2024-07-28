//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Adam Elfsborg on 2024-07-28.
//

import SwiftUI


struct ContentView: View {
    @State private var username = ""
    @State private var email = ""
    
    var disabledFrom: Bool {
        username.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            Section {
                Button("Create account") { }
            }
            .disabled(disabledFrom)
        }
    }
    
  
}

#Preview {
    ContentView()
}
