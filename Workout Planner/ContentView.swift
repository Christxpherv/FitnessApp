import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                ImageGrid()
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
            NavigationView {
                TabView {
                    FollowingView()
                        .tabItem {
                            Text("Following")
                        }
                        .navigationTitle("Following")
                    ForYouView()
                        .tabItem {
                            Text("For You")
                        }
                        .navigationTitle("For You")
                    TrendingView()
                        .tabItem {
                            Text("Trending")
                        }
                        .navigationTitle("Trending")
                }
                .tabViewStyle(PageTabViewStyle())
                .navigationBarTitle(Text("Explore"), displayMode: .inline)
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

struct ImageGrid: View {
    let images: [Image] = [
        Image("blackplaceholder"),
        Image("blackplaceholder"),
        Image("blackplaceholder"),
        Image("blackplaceholder"),
        Image("blackplaceholder"),
        Image("blackplaceholder"),
        Image("blackplaceholder"),
        Image("blackplaceholder"),
    ]

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(alignment: .leading) {
                    ForEach(0..<4) { row in
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(0..<2) { col in
                                NavigationLink(destination: DetailView()) {
                                    self.images[(row * 2) + col]
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .fixedSize()
                                        .frame(width: (geometry.size.width - 20) / 2, height: geometry.size.height / 4.3)
                                        .clipped()
                                        .cornerRadius(20)
                                }
                            }
                        }
                    }
                }
            }
            .padding(.leading, 8.5)
        }
    }
}


struct DetailView: View {
    var body: some View {
        Text("This is the detail view")
    }
}

struct FollowingView: View {
    var body: some View {
        Text("Following")
    }
}

struct ForYouView: View {
    var body: some View {
        Text("For You")
    }
}

struct TrendingView: View {
    var body: some View {
        Text("Trending")
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



/*
 body parts:
 chest
 triceps
 legs
 calves
 back
 biceps
 shoulders
 abs (core)
 */
