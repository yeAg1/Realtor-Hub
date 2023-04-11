/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A representation of user profile data.
*/

import Foundation

struct Profile {
    var username: String
    //var license: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    

    static let `default` = Profile(username: "John Doe")
    //static let `default` = Profile(license: "John Doe")
    

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}
