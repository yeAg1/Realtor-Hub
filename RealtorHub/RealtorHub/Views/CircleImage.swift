import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
        
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

struct ProfileImage: View {
    var image: Image

    var body: some View {
        image
        
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
