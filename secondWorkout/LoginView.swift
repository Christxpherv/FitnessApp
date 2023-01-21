import SwiftUI
import _AuthenticationServices_SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showError: Bool = false
    @State private var errorMessage: String = ""
    var body: some View {
        VStack(alignment: .center) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding(.bottom, 50)
            TextField("Email", text: $email)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5.0)
                .padding(.bottom, 10)
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5.0)
                .padding(.bottom, 20)
            Button(action: {
                // Perform login action
                if email == "" || password == "" {
                    errorMessage = "Please enter email and password"
                    showError = true
                }else {
                    // handle login
                }
            }) {
                Text("Log In")
                    .foregroundColor(.white)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            if showError {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding(.top, 10)
            }
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
            .frame(width: 400, height: 50 )
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
