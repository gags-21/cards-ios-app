//
//  ContentView.swift
//  Shared
//
//  Created by Gagan Bhirangi on 12/09/22.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    print("Pressed Deal")
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
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0").font(.largeTitle)
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
