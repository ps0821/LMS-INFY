//
//  OnboardingView 2.swift
//  LMS
//
//  Created by palak seth on 26/04/25.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("books")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.black.opacity(0.2), Color.white.opacity(0.95), Color.white,
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: -10) {
                    Spacer()

                    VStack(spacing: 16) {
                        Image(systemName: "books.vertical")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)

                        Text("Welcome to InfyReads")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }

                    Spacer().frame(height: 120)

                    VStack(alignment: .leading, spacing: 37) {
                        FeatureItem(
                            icon: "book.closed",
                            text: "Your gateway to a world of books & information."
                        )
                        FeatureItem(
                            icon: "arrow.left.arrow.right",
                            text: "Explore, Borrow and Return books from libraries."
                        )
                        FeatureItem(
                            icon: "rectangle.stack.badge.person.crop",
                            text: "Seamlessly manage your library experience."
                        )
                    }
                    .padding(.horizontal, 130)

                    Spacer()

                    // NavigationLink to SignInView
                    NavigationLink(destination: SignInView()) {
                        HStack {
                            Text("Get Started")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                        .padding(.horizontal, 135)
                    }
                }
            }
        }
    }
}

struct FeatureItem: View {
    let icon: String
    let text: String

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: icon)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.black)

            Text(text)
                .foregroundColor(.black)
                .font(.body)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    OnboardingView()
}
