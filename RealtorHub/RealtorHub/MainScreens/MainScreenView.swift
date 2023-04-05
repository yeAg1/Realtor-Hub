//
//  MainScreenView.swift
//  RealtorHub
//
//  Created by Paolo D on 3/29/23.
//

import SwiftUI
struct MainScreenView: View {
    var body: some View {
        NavigationStack {
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
                        .overlay(Rectangle().stroke(.black, lineWidth: 7))
                        .padding(.top, -155.0)
                }
                

            }
            
            .toolbar {
                
                ToolbarItemGroup(placement : .bottomBar)
                    {
                    Button{
                        print("Pressed")
                    }label: {
                        Image(systemName: "house")
                    }
                    Spacer()
                    Button{
                        print("Pressed")
                    }
                    label: {
                        Image(systemName: "message")
                    }
                    Spacer()
                    Button{
                        print("Pressed")
                    }label: {
                        Image(systemName: "globe")
                        
                    }
                    Spacer()
                    Button{
                        print("Pressed")
                    }label: {
                        Image(systemName: "percent")
                    }
                    Spacer()
                    Button{
                        print("Pressed")
                    }label: {
                        Image(systemName: "person.fill")
                        
                    }
                    
                
                }
               
            }
            .padding(.bottom, 620.0)
          
            
        }
    }
    
    struct MainScreenView_Previews: PreviewProvider {
        static var previews: some View {
            MainScreenView()
        }
    }
}
