//
//  FrustusApp.swift
//  Fructus
//
//  Created by Murray on 5/25/23.
//

import SwiftUI

@main

struct FructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
          ContentView()
      }
    }
  }
}
