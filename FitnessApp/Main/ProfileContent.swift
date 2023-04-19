import SwiftUI
import SDWebImageSwiftUI

struct ProfileContent: View {
    
    var user: User
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                HStack(spacing: 12) {
                    // replace nil with user.userProfilePicture
                    WebImage(url: nil).placeholder {
                        Image("NullProfile")
                            .resizable()
                    }
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text(user.username)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        /*
                        Text(user.userBio)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .lineLimit(3)
                         */
                    }
                }
                
                Text("Post")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .hAlign(.leading)
                    .padding(.vertical, 15)
            }
        }
    }
}
