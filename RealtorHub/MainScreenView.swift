//
//  MainScreenView.swift
//  RealtorHub
//
//  Created by Paolo D on 3/29/23.
//  edited and worked on by sergio

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        VStack {
            VStack(alignment: .center){
                Rectangle()
                    .fill(Color("AccentColor").gradient)
                    .frame(width: 400, height: 200)
                    .ignoresSafeArea()
                    .padding()
                VStack(alignment: .center){
                    Image("RHLogo")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .overlay(Rectangle().stroke(.black, lineWidth: 4))
                        .padding(.top, -155.0)
                }
                    
            }
            .padding(.bottom, 650.0)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
    
    struct MainScreenView_Previews: PreviewProvider {
        static var previews: some View {
            MainScreenView()
        }
    }
}
