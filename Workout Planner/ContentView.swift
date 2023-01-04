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
            .tabItem {
                Image(uiImage: UIImage(named: "home-home_symbol")!)
                Text("Home")
            }
            Text("Exercises")
                .tabItem {
                    Image(uiImage: UIImage(named:"self_improvement")!)
                    Text("Exercises")
                }
            Text("Progress")
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Progress")
                }
            VStack {
                HStack {
                    Button(action: {
                    }) {
                        Text("Following")
                    }
                    Button(action: {
                    }) {
                        Text("For You")
                    }
                    Button(action: {
                    }) {
                        Text("Trending")
                    }
                }
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Explore")
            }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        List {
            Text("Option 1")
            Text("Option 2")
            Text("Option 3")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
