//
//  ContentView.swift
//  War-Card
//
//  Created by SyedSaad on 20/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard  = "card5"
    @State private var cpuCard     = "card9"
    @State private var playerscore = 0
    @State private var cpuScore    = 0
    
    
    var body: some View {
        ZStack{
            Image("galaxy-1").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
            VStack(){
                Spacer()
                Image("logo")
        
        Spacer()
        HStack {
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
        }
        Spacer()
                Button(action:{
                    
                    // Generating a random card
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard    = "card" + String(cpuRand)
                    // update the score
                    if playerRand > cpuRand{
                        playerscore += 1   }
                    else if playerRand < cpuRand{
                        cpuScore    += 1   }
                    //else {
                      //  playerscore = playerscore
                      //  cpuScore = cpuScore
                   // }
                    
                } , label: {
                    Image("dealbutton")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                    })
        
        Spacer()
        HStack {
            Spacer()
            VStack {
                Text("Player")
                    .font(.headline)
                    .foregroundColor(Color.red)
                    .padding(.bottom, 10.0)
                Text(String(playerscore))
                    .font(.largeTitle)
                    .foregroundColor(Color.purple)
            }
            Spacer()
            VStack{
                Text("CPU")
                    .font(.headline)
                    .foregroundColor(Color.red)
                    .padding(.bottom, 10.0)
                Text(String(cpuScore))
                    .font(.largeTitle)
                    .foregroundColor(Color.purple)
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
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
        }
    }
}
