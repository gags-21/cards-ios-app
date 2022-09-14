//
//  ContentView.swift
//  Shared
//
//  Created by Gagan Bhirangi on 12/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            Image("IOS test img")
            
            Text("Hello, world!")
                .padding()
            
            Text("Hello, world again!")
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
