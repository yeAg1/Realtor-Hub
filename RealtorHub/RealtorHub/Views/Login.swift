//
//  LoginScreen.swift
//  RealtorHub
//
//  Created by Paolo D on 3/29/23.
//

import SwiftUI

struct LoginView: View {
    @State var user = ""
    @State var pass = ""
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
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
                VStack {
                    TextField("Username", text: $user)
                    Divider()
                    SecureField("Password", text: $pass)
                }
                .padding(.all, 5.0).overlay(Rectangle().stroke(.black, lineWidth: 2))
                NavigationLink(
                    destination: MainScreenView().navigationBarBackButtonHidden(true),
                    isActive: $isLoggedIn,
                    label: {
                        Button("Login") {
                            isLoggedIn = true
                        }
                        .tint(.accentColor)
                        .buttonStyle(.borderedProminent)
                    }
                )
            }
            .padding()
            .ignoresSafeArea()
            //.navigationTitle("Welcome")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
