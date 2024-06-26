import SwiftUI

struct HomePageView: View {
    
    let columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)  ]
    
    let image: [String] = ["orange", "black", "orange", "black",
                            "orange", "black", "orange", "black"]
    
    let part: [String] = ["biceps", "triceps", "shoulders", "chest",
                          "core", "back", "legs", "calves"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                Section(header: Text("exercises")) {
                    LazyVGrid(columns: columns) {
                        ForEach(0..<8, id: \.self) { index in
                            NavigationLink(destination: DetailView(selectedPart: part[index])) {
                                Image(image[index])
                                    .resizable(capInsets: .init(), resizingMode: .stretch)
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(20)
                                    .overlay(
                                        Text(part[index])
                                            .frame(width: 185, height: 160, alignment: .bottom)
                                            .foregroundColor(.white))
                            }
                        }
                    }
                }
                
                Section(header: Text("chat robot")) {
                    Rectangle()
                        .frame(width: 400, height: 500)
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(uiImage: UIImage(named:"send")!)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Circle()
                        .position(x: -25, y: 18)
                        .scaledToFit()
                        .frame(width: 100, height: 40, alignment: .trailing)
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
                
                    information(bodyPart: biceps, exercises: bicepExercise, columns: columns)
            }
            Spacer()
        case "triceps":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                    information(bodyPart: triceps, exercises: tricepExercise, columns: columns)
            }
            Spacer()
        case "shoulders":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                    information(bodyPart: shoulders, exercises: shoulderExercise, columns: columns)
            }
            Spacer()
        case "chest":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                    information(bodyPart: chest, exercises: chestExercise, columns: columns)
            }
            Spacer()
        case "core":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                    information(bodyPart: core, exercises: coreExercise, columns: columns)
            }
            Spacer()
        case "back":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                    information(bodyPart: back, exercises: backExercise, columns: columns)
            }
            Spacer()
        case "legs":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()
                
                    information(bodyPart: legs, exercises: legsExercise, columns: columns)
            }
            Spacer()
        case "calves":
            ZStack {
                
                Color.gray
                    .ignoresSafeArea()

                    information(bodyPart: calves, exercises: calvesExercise, columns: columns)
            }
            Spacer()
        default:
            Text("invalid")
        }
    }
}

struct Workout: View {
    
    let exercise: String
    
    var body: some View {
        switch exercise {
        case "workout one":
            Text("information goes here")
        default:
            Text("invalid")
        }
    }
}








func information(bodyPart: [String], exercises: [String], columns: [GridItem]) -> some View {
    ScrollView {
        LazyVGrid(columns: columns) {
            ForEach(bodyPart.indices, id: \.self) { index in
                NavigationLink(destination: Workout(exercise: exercises[index])) {
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
}


struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
