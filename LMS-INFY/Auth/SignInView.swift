//
//  SignInView.swift
//  LMS
//
//  Created by palak seth on 26/04/25.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // Logo and Welcome Text
                Image(systemName: "book.fill")  // Replace with your logo if needed
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.top, 100)
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                Text("Sign in to continue")
                    .font(.subheadline)
                    .padding(.top, 2)
                
                // Email Text Field
                TextField("Enter your email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.top, 40)
                
                // Password Text Field
                SecureField("Enter your password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.top, 20)
                
                // Forgot Password Link
                HStack {
                    Spacer()
                    Button(action: {
                        // Forgot Password Action
                    }) {
                        Text("Forgot Password?")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    .padding(.top, 10)
                }
                
                // Sign In Button
                Button(action: {
                    // Sign In Action
                }) {
                    Text("Sign In")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.top, 30)
                }
                
                Spacer()
                
                // Register Link - Navigate to SignupView
                HStack {
                    Text("Don't have an account?")
                        .font(.subheadline)
                    NavigationLink(destination: SignupView()) {
                        Text("Register")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.bottom, 30)
            }
            .padding(.horizontal, 30)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
