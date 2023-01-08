import SwiftUI

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
    let images = [
        Image("blackplaceholder"),        Image("blackplaceholder"),     Image("blackplaceholder"),        Image("blackplaceholder"),        Image("blackplaceholder"),        Image("blackplaceholder"),        Image("blackplaceholder"),   Image("blackplaceholder")    ]

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(alignment: .leading) {
                    ForEach(0..<4) { row in
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(0..<2) { col in
                                NavigationLink(destination: DetailView(section: "Section \(row * 2 + col + 1)")) {
                                    ZStack(alignment: .bottom) {
                                        images[row * 2 + col]
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: (geometry.size.width - 20) / 2, height: geometry.size.height / 4.3)
                                            .clipped()
                                            .cornerRadius(20)

                                        Text("Label")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                            .padding(4)
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(4)
                                            .offset(x: 0, y: -4)
                                    }
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
    var section: String
    
    var body: some View {
        Group {
            switch section {
            case "Section 1":
                ScrollView(.vertical, showsIndicators: true) {
                    HStack {
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                Spacer()
            case "Section 2":
                ScrollView(.vertical, showsIndicators: true) {
                    HStack {
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                Spacer()
            case "Section 3":
                ScrollView(.vertical, showsIndicators: true) {
                    HStack {
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                Spacer()
            case "Section 4":
                ScrollView(.vertical, showsIndicators: true) {
                    HStack {
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                Spacer()
            case "Section 5":
                ScrollView(.vertical, showsIndicators: true) {
                    HStack {
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                Spacer()
            case "Section 6":
                ScrollView(.vertical, showsIndicators: true) {
                    HStack {
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                Spacer()
            case "Section 7":
                ScrollView(.vertical, showsIndicators: true) {
                    HStack {
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                Spacer()
            case "Section 8":
                ScrollView(.vertical, showsIndicators: true) {
                    HStack {
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                        VStack {
                            ForEach(0..<4) { _ in
                                Image("blackplaceholder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                Spacer()
            default:
                Text("Invalid section")
            }
        }
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
