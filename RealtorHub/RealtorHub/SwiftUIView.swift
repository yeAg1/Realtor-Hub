//
//  LoginScreen.swift
//  RealtorHub
//
//  Created by Paolo D on 3/29/23.
//

import SwiftUI

struct LoginScreen: View {
    @State var user = ""
    @State var pass = ""
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
            TextField("Username" ,text : $user ).padding(.all, 5.0).overlay(Rectangle().stroke(.black, lineWidth: 2))
            TextField("Password" ,text : $pass ).padding(.all, 5.0).overlay(Rectangle().stroke(.black, lineWidth: 2))
            
            Button("Login"){
                print("Login")
            }.tint(.accentColor) .buttonStyle(.borderedProminent)
        
            
        
                           
            
        }
        .padding()
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

