import SwiftUI
import Combine
import _AuthenticationServices_SwiftUI
import FirebaseAnalyticsSwift

private enum FocusableField: Hashable {
  case email
  case password
}

struct LoginView: View {
  @EnvironmentObject var viewModel: AuthenticationViewModel
  @Environment(\.dismiss) var dismiss

  @FocusState private var focus: FocusableField?

  private func signInWithEmailPassword() {
    Task {
      if await viewModel.signInWithEmailPassword() == true {
        dismiss()
      }
    }
  }

  var body: some View {
    VStack {
      Image("Login")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(minHeight: 300, maxHeight: 400)
      Text("Login")
        .font(.largeTitle)
        .fontWeight(.bold)
        .frame(maxWidth: .infinity, alignment: .leading)

      HStack {
        Image(systemName: "at")
        TextField("Email", text: $viewModel.email)
          .textInputAutocapitalization(.never)
          .disableAutocorrection(true)
          .focused($focus, equals: .email)
          .submitLabel(.next)
          .onSubmit {
            self.focus = .password
          }
      }
      .padding(.vertical, 6)
      .background(Divider(), alignment: .bottom)
      .padding(.bottom, 4)

      HStack {
        Image(systemName: "lock")
        SecureField("Password", text: $viewModel.password)
          .focused($focus, equals: .password)
          .submitLabel(.go)
          .onSubmit {
            signInWithEmailPassword()
          }
      }
      .padding(.vertical, 6)
      .background(Divider(), alignment: .bottom)
      .padding(.bottom, 8)

      if !viewModel.errorMessage.isEmpty {
        VStack {
          Text(viewModel.errorMessage)
            .foregroundColor(Color(UIColor.systemRed))
        }
      }

      Button(action: signInWithEmailPassword) {
        if viewModel.authenticationState != .authenticating {
          Text("Login")
            .frame(maxWidth: .infinity, maxHeight: 5)
        }
        else {
          ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .padding(.vertical, 8)
            .frame(maxWidth: .infinity)
        }
      }
      .foregroundColor(.white)
      .padding()
      .background(Color.blue)
      .cornerRadius(10)
      .disabled(!viewModel.isValid)
      .buttonStyle(.borderedProminent)
        
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

      HStack {
        Text("Don't have an account yet?")
        Button(action: { viewModel.switchFlow() }) {
          Text("Sign up")
            .fontWeight(.semibold)
            .foregroundColor(.blue)
        }
      }
      .padding([.top, .bottom], 50)
    }
    .listStyle(.plain)
    .padding()
    .analyticsScreen(name: "\(Self.self)")
  }
}

struct LogView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      LoginView()
      LoginView()
        .preferredColorScheme(.dark)
    }
    .environmentObject(AuthenticationViewModel())
  }
}
