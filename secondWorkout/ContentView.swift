import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                ImageGrid()
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
    
    let columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)  ]
    
    var iterations: Int = 8
    
    let image: [String] = ["orange", "black", "orange", "black",
                            "orange", "black", "orange", "black"]
    
    let part: [String] = ["biceps", "triceps", "shoulders", "chest",
                          "core", "back", "legs", "calves"]
    
    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    
                    Color.gray
                        .ignoresSafeArea(edges: .top)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<8, id: \.self) { index in
                            NavigationLink(destination: DetailView(selectedPart: part[index])) {
                                Image(image[index])
                                    .resizable(capInsets: .init(), resizingMode: .stretch)
                                    .frame(width: 185, height: 170)
                                    .cornerRadius(20)
                                    .overlay(
                                        Text(part[index])
                                            .frame(width: 185, height: 160, alignment: .bottom)
                                            .foregroundColor(.white))
                            }
                        }
                    }
                }
            }
        }
    }
}

struct DetailView: View {
    
    var selectedPart: String
    
    let columns = [
        GridItem(.flexible(), spacing: 0, alignment: .center),
        GridItem(.flexible(), spacing: 0, alignment: .center)]
    
    let biceps: [String] = ["black", "orange", "black", "orange", "black", "orange", "black", "orange"]
    let bicepExercise: [String] = ["workout one", "workout two", "workout three", "workout four", "workout five", "workout six", "workout seven","workout eight"]
    
    let triceps: [String] = ["black", "orange", "black", "orange", "black", "orange", "black", "orange"]
    let tricepExercise: [String] = ["workout one", "workout two", "workout three", "workout four", "workout five", "workout six", "workout seven","workout eight"]
    
    let shoulders: [String] = ["black", "orange", "black", "orange", "black", "orange", "black", "orange"]
    let shoulderExercise: [String] = ["workout one", "workout two", "workout three", "workout four", "workout five", "workout six", "workout seven","workout eight"]
    
    let chest: [String] = ["black", "orange", "black", "orange", "black", "orange", "black", "orange"]
    let chestExercise: [String] = ["workout one", "workout two", "workout three", "workout four", "workout five", "workout six", "workout seven","workout eight"]
    
    let core: [String] = ["black", "orange", "black", "orange", "black", "orange", "black", "orange"]
    let coreExercise: [String] = ["workout one", "workout two", "workout three", "workout four", "workout five", "workout six", "workout seven","workout eight"]
    
    let back: [String] = ["black", "orange", "black", "orange", "black", "orange", "black", "orange"]
    let backExercise: [String] = ["workout one", "workout two", "workout three", "workout four", "workout five", "workout six", "workout seven","workout eight"]
    
    let legs: [String] = ["black", "orange", "black", "orange", "black", "orange", "black", "orange"]
    let legsExercise: [String] = ["workout one", "workout two", "workout three", "workout four", "workout five", "workout six", "workout seven","workout eight"]
    
    let calves: [String] = ["black", "orange", "black", "orange", "black", "orange", "black", "orange"]
    let calvesExercise: [String] = ["workout one", "workout two", "workout three", "workout four", "workout five", "workout six", "workout seven","workout eight"]
    
    var body: some View {
        switch selectedPart {
        case "biceps":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                NavigationLink(destination: workout()) {
                    loop(bodyPart: biceps, exercises: bicepExercise, columns: columns)
                }
            }
            Spacer()
        case "triceps":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                NavigationLink(destination: workout()) {
                    loop(bodyPart: triceps, exercises: tricepExercise, columns: columns)
                }
            }
            Spacer()
        case "shoulders":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                NavigationLink(destination: workout()) {
                    loop(bodyPart: shoulders, exercises: shoulderExercise, columns: columns)
                }
            }
            Spacer()
        case "chest":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                NavigationLink(destination: workout()) {
                    loop(bodyPart: chest, exercises: chestExercise, columns: columns)
                }
            }
            Spacer()
        case "core":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                NavigationLink(destination: workout()) {
                    loop(bodyPart: core, exercises: coreExercise, columns: columns)
                }
            }
            Spacer()
        case "back":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                NavigationLink(destination: workout()) {
                    loop(bodyPart: back, exercises: backExercise, columns: columns)
                }
            }
            Spacer()
        case "legs":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                NavigationLink(destination: workout()) {
                    loop(bodyPart: legs, exercises: legsExercise, columns: columns)
                }
            }
            Spacer()
        case "calves":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                NavigationLink(destination: workout()) {
                    loop(bodyPart: calves, exercises: calvesExercise, columns: columns)
                }
            }
            Spacer()
        default:
            Text("invalid")
        }
    }
}

func loop(bodyPart: [String], exercises: [String], columns: [GridItem]) -> some View {
    ScrollView {
        LazyVGrid(columns: columns) {
            ForEach(bodyPart.indices, id: \.self) { index in
                Image(bodyPart[index])
                    .resizable(capInsets: .init(), resizingMode: .stretch)
                    .frame(width: 185, height: 170)
                    .cornerRadius(20)
                    .overlay(
                        Text(exercises[index])
                            .frame(width: 185, height: 160, alignment: .bottom)
                            .foregroundColor(.white))
            }
        }
    }
}

struct workout: View {
    var body: some View {
        Text("workout page")
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
        Text("profile")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
