//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by Mayar Adel on 6/22/21.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = Int.random(in: 1...6)
    @State var rightDiceNumber = Int.random(in: 1...6)
    var body: some View {
       ZStack
       {
        Image("background")
            .resizable()//take the remaining space
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack {
            Image("diceeLogo")
            Spacer()
            HStack {
                DiceView(diceNumber: leftDiceNumber)
                DiceView(diceNumber: rightDiceNumber)
                
            }
            Spacer()
            Button(action: {
                [self ] in
                leftDiceNumber = Int.random(in: 1...6)
                rightDiceNumber = Int.random(in: 1...6)
            }) {
                Text("Roll")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .font(.system(size: 50))
                
            }.background(Color.red)
        }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


