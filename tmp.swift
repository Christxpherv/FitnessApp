//import SwiftUI
//import SceneKit (use to add 3D model to the homepage)
//
//struct ContentView: View {
//    var body: some View {
//        TabView {
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//                Text("Hello, world!")
//            }
//            .padding()
//            .tabItem {
//                Image(systemName: "1.circle")
//                Text("Home")
//            }
//            ExercisesView()
//                .tabItem {
//                    Image(systemName: "rectangle.stack")
//                    Text("Exercises")
//                }
//            ProgressView()
//                .tabItem {
//                    Image(systemName: "chart.bar")
//                    Text("Progress")
//                }
//            Text("Explore")
//                .tabItem {
//                    Image(systemName: "magnifyingglass")
//                    Text("Explore")
//                }
//            ProfileView()
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//        }
//    }
//}
//
//struct ProfileView: View {
//    var body: some View {
//        Text("This is the profile view")
//    }
//}
//
//struct ExercisesView: View {
//    var body: some View {
//        Text("This is the exercises view")
//    }
//}
//
//struct ProgressView: View {
//    var body: some View {
//        Text("This is the progress view")
//    }
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//}
//


// second version
//import SwiftUI
//import SceneKit
//
//struct ContentView: View {
//    var body: some View {
//        TabView {
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//                Text("Hello, world!")
//            }
//            .tabItem {
//                Image(uiImage: UIImage(named: "home-home_symbol")!)
//                Text("Home")
//            }
//            Text("Exercises")
//                .tabItem {
//                    Image(uiImage: UIImage(named:"self_improvement")!)
//                    Text("Exercises")
//                }
//            Text("Progress")
//                .tabItem {
//                    Image(systemName: "chart.bar")
//                    Text("Progress")
//                }
//            NavigationView {
//                VStack {
//                    HStack {
//                        NavigationLink(destination: FollowingView()) {
//                            Text("Following")
//                        }
//                        NavigationLink(destination: ForYouView()) {
//                            Text("For You")
//                        }
//                        NavigationLink(destination: TrendingView()) {
//                            Text("Trending")
//                        }
//                    }
//                }
//            }
//            .tabItem {
//                Image(systemName: "magnifyingglass")
//                Text("Explore")
//            }
//            ProfileView()
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//        }
//    }
//}
//
//struct FollowingView: View {
//    var body: some View {
//        Text("Following")
//    }
//}
//
//struct ForYouView: View {
//    var body: some View {
//        Text("For You")
//    }
//}
//
//struct TrendingView: View {
//    var body: some View {
//        Text("Trending")
//    }
//}
//
//struct ProfileView: View {
//    var body: some View {
//        List {
//            Text("Option 1")
//            Text("Option 2")
//            Text("Option 3")
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//


// third version
//import SwiftUI
//import SceneKit
//
//struct ContentView: View {
//    var body: some View {
//        TabView {
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//                Text("Hello, world!")
//            }
//            .tabItem {
//                Image(uiImage: UIImage(named: "home-home_symbol")!)
//                Text("Home")
//            }
//            Text("Exercises")
//                .tabItem {
//                    Image(uiImage: UIImage(named:"self_improvement")!)
//                    Text("Exercises")
//                }
//            Text("Progress")
//                .tabItem {
//                    Image(systemName: "chart.bar")
//                    Text("Progress")
//                }
//            NavigationView {
//                TabView {
//                    FollowingView()
//                        .tabItem {
//                            Text("Following")
//                        }
//                        .navigationTitle("Following")
//                    ForYouView()
//                        .tabItem {
//                            Text("For You")
//                        }
//                        .navigationTitle("For You")
//                    TrendingView()
//                        .tabItem {
//                            Text("Trending")
//                        }
//                        .navigationTitle("Trending")
//                }
//                .tabViewStyle(PageTabViewStyle())
//            }
//            .tabItem {
//                Image(systemName: "magnifyingglass")
//                Text("Explore")
//            }
//            ProfileView()
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//        }
//    }
//}
//
//struct FollowingView: View {
//    var body: some View {
//        Text("Following")
//    }
//}
//
//struct ForYouView: View {
//    var body: some View {
//        Text("For You")
//    }
//}
//
//struct TrendingView: View {
//    var body: some View {
//        Text("Trending")
//    }
//}
//
//struct ProfileView: View {
//    var body: some View {
//        List {
//            Text("Option 1")
//            Text("Option 2")
//            Text("Option 3")
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


