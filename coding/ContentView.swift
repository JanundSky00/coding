//
//  ContentView.swift
//  coding
//
//  Created by Janundsky on 22/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 0
    @State private var chocolateRemaining = 40
    @State private var message = ""
    
    var body: some View {
        VStack {
            Text("\(counter) chocolate eaten")
            
            Text("\(chocolateRemaining - counter)chocolateremaining")
            Button{
                print("buy buy chocolate")
                counter += 1
                
                if counter >= 5{
                    message = "you ate to much!🍫"
                }
                if counter >= 10{
                    message = "oow noo 💔"
                    if counter >= 15 {
                        message = "what did u do🐽"
                    }
                    if counter >= 20{
                        message = "u will get sick🤧"
                    }
                }
                    }label: {
                Text("yhmmmmy")
            
                    .padding()
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            .padding(1.0)
            .shadow(radius: 6)
            Button{
                chocolateRemaining = chocolateRemaining + 1
            } label : {
                Text("Buy a chocolate ")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            Button{
                counter = 0
                message = ""
                chocolateRemaining = 40
            } label: {
                Text("Reset")
                /*
                 .buttonStyle(.borderedProminent)
                 .tint(.cyan)
                 */
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            .blur(radius: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            .shadow(radius: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
            
            Text(message)
                .padding()
                .foregroundColor(.red)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
