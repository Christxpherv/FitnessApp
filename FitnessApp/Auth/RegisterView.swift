import SwiftUI
import Firebase
import FirebaseStorage
import FirebaseFirestore
import Combine
import _AuthenticationServices_SwiftUI
import FirebaseAnalyticsSwift

struct RegisterView: View {

    @State var emailID: String = ""
    @State var password: String = ""
    @State var username: String = ""
    @State var userProfilePicData: Data?
    @State var showImagePicker: Bool = false
    // @State var photoItem: PhotosImagePicker?

    @State var showError: Bool = false
    @State var errorMessage: String = ""
    @State var isLoading: Bool = false

    @AppStorage("log_status") var logStatus: Bool = false
    @AppStorage("user_name") var userNameStored: String = ""
    @AppStorage("user_UID") var userUID: String = ""

    @Environment(\.dismiss) var dismiss

    var body: some View{
        VStack(spacing: 10) {
            Text("Sign Up")
                .font(.largeTitle.bold())
                .hAlign(.leading)

            VStack(spacing: 12) {
                ZStack {
                    if let userProfilePicData, let image = UIImage(data: userProfilePicData) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                    else {
                        Image("NullProfile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                }
                TextField("Email", text: $emailID)
                    .textContentType(.emailAddress)
                    .border(1, .gray.opacity(0.5))
                    .padding(.top, 25)

                TextField("Username", text: $username)
                    .textContentType(.username)
                    .border(1, .gray.opacity(0.5))

                SecureField("Password", text: $password)
                    .border(1, .gray.opacity(0.5))


                Button(action: registerUser) {

                    Text("Sign up")
                        .foregroundColor(.white)
                        .hAlign(.center)
                        .fillView(.blue)

                }
                .disableWithOpacity(username == "" || emailID == "" || password == "")
                .padding(.top , 10)

                HStack {
                    VStack { Divider() }
                    Text("or")
                    VStack { Divider() }
                }
                SignInWithAppleButton { request in
                    // code here
                } onCompletion: { result in
                    // code here
                }
                .frame(width: 400, height: 50)
            }

            HStack {
                Text("Already have an account? ")
                    .foregroundColor(.black)
                Button("Login now") {
                    dismiss()
                }
                .fontWeight(.medium)
                .foregroundColor(.blue)
            }
            .font(.callout)
            .vAlign(.bottom)
        }
        .vAlign(.top)
        .padding(15)
        .overlay(content: {
            LoadingView(show: $isLoading)
        })
        .alert(errorMessage, isPresented: $showError, actions: {})
    }
    func registerUser() {
        isLoading = true
        closeKeyboard()
        Task{
            do{
                /* create firesebase account */
                try await Auth.auth().createUser(withEmail: emailID, password: password)
                /* upload user profile picture */
                guard let userUID = Auth.auth().currentUser?.uid else{return}
                guard let imageData = userProfilePicData else {return}

                let user = User(username: username, userEmail: emailID, userUID: userUID)

                let _ = try Firestore.firestore().collection("Users").document(userUID).setData(from: user, completion: {error in
                    if error == nil {
                        print("saved successfully")
                        userNameStored = username
                        self.userUID = userUID
                        logStatus = true
                    }
                })

            }catch{
                try await Auth.auth().currentUser?.delete()
                await setError(error)
            }
        }
    }
    func setError(_ error: Error)async{
        await MainActor.run(body: {
            errorMessage = error.localizedDescription
            showError.toggle()
            isLoading = false
        })
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
