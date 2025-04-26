//
//  ContentView.swift
//  LMS-INFY
//
//  Created by palak seth on 26/04/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboardingCompleted") private var isOnboardingCompleted: Bool = false

    var body: some View {
        VStack {
            if isOnboardingCompleted {
                // Main App Content (After Onboarding)
                Text("Welcome to the App!")
                    .font(.title)
                    .fontWeight(.bold)
            } else {
                // Show the Onboarding View initially
                OnboardingView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


