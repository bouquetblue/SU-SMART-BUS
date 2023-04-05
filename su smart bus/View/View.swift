//
//  View.swift
//  su smart bus
//
//  Created by admin on 24/3/2566 BE.
//

import SwiftUI

struct LoginView: View {
    //    @ObservedObject private var authVM: AuthViewModel = AuthViewModel()
    @EnvironmentObject private var authVM: AuthViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.black
            
            VStack(spacing: 20) {
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.custom("Roboto-Bold", size: 42))
                    .offset(x: -100, y: -100)
                TextField("Email", text: $email, prompt: Text("ict@su.ac.th").foregroundColor(.gray))
                    .textFieldStyle(.plain)
                    .foregroundColor(.white)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white)
                
                SecureField("Password", text: $password, prompt: Text("Password you love").foregroundColor(.gray))
                    .foregroundColor(.white)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white)
                
                Button {
                    if email != "" && password != "" {
                        authVM.login(email: email, password: password)
                    }
                } label: {
                    Text("Login")
                        .bold()
                        .frame(width: 350, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                        )
                        .foregroundColor(.black)
                }
                .offset(y: 20)
                
                Button {
                    authVM.register(email: email, password: password, firstName: "Songpob", lastName: "Hamthanan") { result in
                        switch result {
                        case .success(let isSuccess):
                            print(isSuccess ? "Register success" : "Register failed")
                            //Go to login view
                        case .failure(let error):
                            print(error.localizedDescription)
                            //Show Alert
                        }
                    }
                } label: {
                    Text("Don't have an account? Join")
                        .foregroundColor(.white)
                }
                .offset(y: 100)
                
            }
            .padding(.horizontal, 20)
        }
        .edgesIgnoringSafeArea(.all)
        .onChange(of: authVM.isUserAuthenticated) { newValue in
            if newValue == true {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AuthViewModel())
    }
}
