//
//  ContentView.swift
//  Shared
//
//  Created by Gagan Bhirangi on 12/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private  var cpuScore = 0
    
    var body: some View {
        
        // Stack
        ZStack{
            
            // Background
            Image("background").ignoresSafeArea()
            
            // Column
            VStack{
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                // Row
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    
                    // Random number generation from 2 to 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update scores
                    if playerRand > cpuRand {
                        playerScore += 1
                    }else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
                
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
