//
//  ContentView.swift
//  counter-app
//
//  Created by selimmh on 02.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var counter = 0
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
                Circle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.red)
                    .cornerRadius(15)
                
                Text("\(self.counter)")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding(.vertical, 100)
            }
            
            
            VStack {
                
                Button(action: {
                    self.counter += 1
                }) {
                    MainButton(sign: "+1")
                }
                
                Button(action: {
                    self.counter += 10
                }) {
                    MainButton(sign: "+10")
                }
                
                Button(action: {
                    self.counter -= 1
                }) {
                    MainButton(sign: "-1")
                }
                
                Button(action: {
                    self.counter -= 10
                }) {
                    MainButton(sign: "-10")
                }
                
                
                Button(action: {
                    self.counter = 0
                }) {
                    MainButton(sign: "reset").font(.system(size: 10))
                }
                Spacer()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}

struct MainButton: View {
    
    var sign: String
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(width: 280, height: 60, alignment: .center)
                .foregroundColor(.gray)
                .cornerRadius(15)
            Text(sign)
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
    }
}
