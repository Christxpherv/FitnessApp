import SwiftUI
import FirebaseFirestoreSwift

struct User: Identifiable, Codable {
    
    @DocumentID var id: String?
    var username: String
    var userEmail: String
    var userUID: String
    
    enum CodingKeys: CodingKey {
        case id
        case username
        case userEmail
        case userUID
    }
}
