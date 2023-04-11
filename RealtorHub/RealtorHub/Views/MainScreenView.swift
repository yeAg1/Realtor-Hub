import SwiftUI
import MapKit


struct MainScreenView: View {
    //@State private var isShowingLandmarkList = false
    //@State private var isShowingCircleImage = false

    
    var body: some View {
        TabView {
            LandmarkList()
                .environmentObject(ModelData())
                .tabItem() {
                    Image(systemName: "house")
                    Text("properties")
                }
            MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .tabItem() {
                    Image(systemName: "message")
                    Text("chat")
                }
            CircleImage(image: Image("turtlerock"))
                .tabItem() {
                    Image(systemName: "globe")
                    Text("live feed")
                }
            LandmarkList()
                .environmentObject(ModelData())
                .tabItem() {
                    Image(systemName: "percent")
                    Text("calculator")
                }
            ProfileHost()
                .environmentObject(ModelData())
                .tabItem() {
                    Image(systemName: "person.fill")
                    Text("profile")
                }
        }
        
        //NavigationView {
            //HStack {
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
                .padding(.bottom, 620.0)
                
                
                /*.toolbar {
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
            }*/
            //}
       // }
    }
    
    struct MainScreenView_Previews: PreviewProvider {
        static var previews: some View {
            MainScreenView()
        }
    }
}
