//
//  MVVPRepeatApp.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 15.07.25.
//

import SwiftUI

@main
struct MVVPRepeatApp: App {
    
    @State private var loginViewModel = LoginViewModel()

    var body: some Scene {
        WindowGroup {
            if loginViewModel.isOnboarding {
                Onboarding()
                    .environment(loginViewModel)
            } else {
                if loginViewModel.isLogged {
                    ContentView()
                        .environment(loginViewModel)
                } else {
                    LoginView()
                        .environment(loginViewModel)
                }
            }
        }
        
    }
}
