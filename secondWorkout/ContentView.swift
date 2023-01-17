import SwiftUI

struct ContentView: View {
    
    @State private var currentTab = 0
    @State private var searchTerm: String = ""

    var body: some View {
        TabView {
            HomePageView()
            .tabItem {
                Image(uiImage: UIImage(named: "Home")!)
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
                TabView(selection: $currentTab) {
                    FollowingView()
                        .tabItem {
                            Text("Following")
                        }
                        .tag(0)
                    ForYouView()
                        .tabItem {
                            Text("For You")
                        }
                        .tag(1)
                    TrendingView()
                        .tabItem {
                            Text("Trending")
                        }
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .navigationBarTitle(Text(tabName(for: currentTab)), displayMode: .inline)
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

    private func tabName(for index: Int) -> String {
        switch index {
        case 0: return "Following"
        case 1: return "For You"
        case 2: return "Trending"
        default: return "Explore"
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
