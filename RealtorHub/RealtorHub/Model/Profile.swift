/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A representation of user profile data.
*/

import Foundation

struct Profile {
    var username: String
    var email: String
    var DRE: String
    var prefersNotifications = true
    var status = Season.winter
    var goalDate = Date()
    

    static let `default` = Profile(username: "John Doe",
                                   email: "JohnDoe@gmail.com",
                                   DRE: "xxxx-xxx-xxx")
    
    

    enum Season: String, CaseIterable, Identifiable {
        case spring = "busy"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}
