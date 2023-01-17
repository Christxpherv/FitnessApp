import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("profile_picture")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 5)
                VStack(alignment: .leading) {
                    Text("Username")
                        .font(.title)
                        .bold()
                    HStack {
                        Text("Followers")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Spacer()
                        Text("Following")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Button(action: {
                        // action for follow button
                    }) {
                        Text("Follow")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .background(Color.blue)
                            .clipShape(Capsule())
                    }
                    Button(action: {
                        // action for message button
                    }) {
                        Image(systemName: "message")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                }
            }
            .padding(.top, 16)
            .padding(.horizontal, 16)
            
            Text("Bio")
                .font(.body)
                .padding(.top, 8)
                .padding(.horizontal, 16)
            
            List {
                // list of tweets or other content
            }
            .padding(.top, 8)
        }
        .navigationBarTitle("Profile", displayMode: .inline)
    }
}






struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
