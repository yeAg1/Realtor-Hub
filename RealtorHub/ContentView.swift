//
//  ContentView.swift
//  RealtorHub
//
//  Created by Paolo D on 3/29/23.
//  edited and worked on by sergio

import SwiftUI

struct ContentView: View {
    @State var text = ""
    var body: some View {
        
        VStack {
            VStack{
                Rectangle()
                    .fill(Color("AccentColor").gradient)
                    .frame(width: 400, height: 150)
                    .ignoresSafeArea()
                    .padding(.top, -250.0)
                
            }
            Image("RHLogo")
                .resizable()
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(.black, lineWidth: 4))
                .frame(width: 150, height: 150)
                
            Text("Realtor HUB")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
                .underline()
            TextField("Username" ,text : $text ).padding(.all, 5.0).overlay(Rectangle().stroke(.black, lineWidth: 2))
            TextField("Password" ,text : $text ).padding(.all, 5.0).overlay(Rectangle().stroke(.black, lineWidth: 2))
                
            
            
                           
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
