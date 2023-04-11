import SwiftUI

struct Header: View {
    var body: some View {
        VStack(alignment: .center) {
            Rectangle()
                .fill(Color("AccentColor").gradient)
                .frame(width: 400, height: 200)
                .ignoresSafeArea()
                .padding()
            VStack(alignment: .center) {
                Image("RHLogo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .overlay(Rectangle().stroke(.black, lineWidth: 7))
                    .padding(.top, -185.0)
            }
        }
        .padding(.bottom, 620.0)
    }
}

