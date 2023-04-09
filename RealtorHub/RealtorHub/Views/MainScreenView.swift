import SwiftUI

struct MainScreenView: View {
    @State private var isShowingLandmarkList = false
    
    var body: some View {
        NavigationView {
            HStack {
                VStack(alignment: .center){
                    Rectangle()
                        .fill(Color("AccentColor").gradient)
                        .frame(width: 400, height: 200)
                        .ignoresSafeArea()
                        .padding()
                    VStack(alignment: .center){
                        Image("RHLogo")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .overlay(Rectangle().stroke(.black, lineWidth: 7))
                            .padding(.top, -185.0)  // might need to change since it moves after logging in
                    }
                }
                
                .toolbar {
                    ToolbarItemGroup(placement : .bottomBar)
                    {
                        Button{
                            isShowingLandmarkList = true
                            print("Pressed")
                        }label: {
                            Image(systemName: "house")
                        }
                        Spacer()
                        Button{
                            print("Pressed")
                        } label: {
                            Image(systemName: "message")
                        }
                        Spacer()
                        Button{
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
                .sheet(isPresented: $isShowingLandmarkList) {
                    NavigationView {
                        LandmarkList()
                    }
            }
            }
        }
    }
    
    struct MainScreenView_Previews: PreviewProvider {
        static var previews: some View {
            MainScreenView()
        }
    }
}
