import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        Section {
            VStack(alignment: .leading) {
                HStack {
                    Spacer(minLength: 50)
                    pfp
                    Spacer(minLength: 170)
                    editProfile
                    Spacer(minLength: 50)
                }
                HStack {
                    VStack {
                        Text("Username")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                        
                        Text("user")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                        
                    }
                }
                .padding(.horizontal, 35.0)
                .frame(width: .infinity, height: 50)
                HStack {
                    follows
                }
                .padding(.horizontal, 35)
                .padding(.top, 20)
                Spacer()
            }
        }
    }
    var pfp: some View {
        ZStack {
            Image("orange")
                .resizable()
                .frame(width: 95, height: 110)
                .clipShape(Circle())
            
            Circle()
                .fill(Color.white.opacity(0.1))
                .frame(width: 110, height: 135)
        }
    }
    
    @State var followers: Int = 1000
    @State var following: Int = 0
    
    var follows: some View {
        HStack {
            Text(String(followers))
                .font(.system(size: 20, weight: .semibold, design: .rounded))
            Text("followers")
                .font(.system(size: 20, weight: .semibold, design: .none))
            
            
            Text(String(following))
                .font(.system(size: 20, weight: .semibold, design: .rounded))
            Text("following")
                .font(.system(size: 20, weight: .semibold, design: .none))
        }
        .foregroundColor(Color.black)
    }
    var editProfile: some View {
        Button(action: {
            // code
        }) {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black)
                .frame(width: 95, height: 33)
                .overlay(Text("Edit profile")
                    .foregroundColor(Color.black))
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
