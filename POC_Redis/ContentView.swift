//
//  ContentView.swift
//  POC_Redis
//
//  Created by Caio Soares on 10/02/23.
//

import SwiftUI

struct ContentView: View {
    
    let redisClient = RedisInteractable()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Send to local redis service", action: (
                redisClient.execute
            ))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
