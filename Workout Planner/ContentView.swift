import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
            .tabItem {
                Image(systemName: "1.circle")
                Text("Home")
            }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            Text("Explore")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("This is the profile view")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
