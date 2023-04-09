import SwiftUI

struct Profile: View {
    @State var text = ""
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("AccentColor").gradient)
                .frame(width: 400, height: 250)
                .ignoresSafeArea()
                .padding(.top, -450.0)
            Image("RHLogo")
                .resizable()
                .frame(width: 120, height: 120)
                .overlay(Rectangle().stroke(.black, lineWidth: 4))
                .padding(.top, -355.0)

            Image(systemName: "person")
                .foregroundColor(Color.red)
                .frame(height: 0.0)
                .font(.system(size: 30.0))
                .position(x: 350, y: 750)
            TextField("Username: " ,text : $text )
                .position(x: 200, y: 300)
            TextField("Email: " ,text : $text )
                .position(x: 200, y: 350)
            TextField("Profile Picture: " ,text : $text )
                .position(x: 200, y: 400)
            TextField("Location: " ,text : $text )
                .position(x: 200, y: 450)
            TextField("DRE Number: " ,text : $text )
                .position(x: 200, y: 500)
            TextField("Brokerage: " ,text : $text )
                .position(x: 200, y: 550)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
