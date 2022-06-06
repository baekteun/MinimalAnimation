import Foundation
import SwiftUI

struct User: Identifiable {
    var id = UUID().uuidString
    var name: String
    var image: String
    var type: String
    var amount: String
    var color: Color
}

extension User {
    static var dummy: [User] = [
        .init(name: "HyeongRu", image: "User", type: "Sent", amount: "fdzz", color: .green)
    ]
}
