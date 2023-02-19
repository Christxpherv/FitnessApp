import SwiftUI
import FirebaseCore
import FirebaseAuth
import Firebase

/*
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      Auth.auth().useEmulator(withHost: "localhost", port: 9099)
    return true
  }
}
*/

@main
struct FitnessApp: App {
    init() {
        FirebaseApp.configure()
    }
    // @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
