//
//  ContentView.swift
//  Slots
//
//  Created by Oscar Mok on 24/7/2021.
//

import SwiftUI

struct ContentView: View {
    @State var cred = 1000
    @State var left:String = "apple"
    @State var middle:String = "apple"
    @State var right:String = "apple"
    @State var slot = ["apple", "cherry", "star"]
    
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.system(size: 35))
                .padding()
            
            Spacer()
            
            Text("Credits: " + String(cred))
                .padding()
            
            Spacer()
            
            HStack {
                Image(left)
                    .resizable().aspectRatio(contentMode: .fit)
                Image(middle)
                    .resizable().aspectRatio(contentMode: .fit)
                Image(right)
                    .resizable().aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            
            Button("Spin") {
                left = slot[Int.random(in: 0...2)]
                middle = slot[Int.random(in: 0...2)]
                right = slot[Int.random(in: 0...2)]
                if left == middle && middle == right {
                    cred += 100
                }
                else {
                    cred -= 10
                }
                
            }.padding()
            // adjust the left & right padding
            .padding([.horizontal], 40)
            .foregroundColor(.white)
            .background(Color.pink)
            .cornerRadius(60)
                
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
