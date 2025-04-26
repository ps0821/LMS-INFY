//
//  SignupView.swift
//  LMS
//
//  Created by palak seth on 26/04/25.
//

import SwiftUI

struct SignupView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var isAgreedToTerms: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                // Title and Subheading
                Text("Create Account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 60)
                
                Text("Sign up to get started")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                // Full Name Text Field
                TextField("Enter your full name", text: $fullName)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.top, 40)
                
                // Email Text Field
                TextField("Enter your email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.top, 20)
                
                // Password Text Field
                SecureField("Enter your password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.top, 20)
                
                // Confirm Password Text Field
                SecureField("Confirm your password", text: $confirmPassword)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.top, 20)
                
                // Terms and Privacy Policy Toggle
                HStack {
                    // Custom checkbox style for iOS
                    Toggle(isOn: $isAgreedToTerms) {
                        Text("I agree to the Terms and Privacy Policy")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 20)
                }
                
                // Create Account Button
                Button(action: {
                    // Handle the account creation logic here
                    print("Account Created")
                }) {
                    Text("Create Account")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                        .padding(.top, 30)
                }
                
                Spacer()
                
                // Sign In Link
                HStack {
                    Text("Already have an account?")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    NavigationLink(destination: SignInView()) {
                        Text("Sign In")
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

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
