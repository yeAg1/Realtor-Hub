/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that summarizes a profile.
*/

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(profile.username)
                        .bold()
                    .font(.title)
                    //Spacer()
                    CircleImage(image: Image("ProfilePic"))
                    
                }

                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Status: \(profile.seasonalPhoto.rawValue)")
                Text("DRE license: xxxxxxxxxxx") //+ Text(profile.goalDate, style: .date)

                Divider()

                VStack(alignment: .leading) {
                    Text("Trustworthy Badges")
                        .font(.headline)

                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "badge 1")
                            HikeBadge(name: "badge 2")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "badge 3")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }

                Divider()

                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)

                    HikeView(hike: modelData.hikes[0])
                }
            }
            .padding()
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
