/*
See LICENSE folder for this sample’s licensing information.

Abstract:
An editable profile view.
*/

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile

    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }

    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            HStack {
                Text("Email").bold()
                Divider()
                TextField("email", text: $profile.email)
            }

            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }

            VStack(alignment: .leading, spacing: 20) {
                Text("DRE license").bold()
                Divider()
                //TextField("DRE"), text: $profile.DRE

                /*Picker("Seasonal Photo", selection: $profile.status) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)*/
            }

            /*DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                //Text("Goal Date").bold()
            }*/
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
