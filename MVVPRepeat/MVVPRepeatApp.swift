//
//  MVVPRepeatApp.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 15.07.25.
//

import SwiftUI

@main
struct MVVPRepeatApp: App {
    
    @StateObject var appviewModel = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            if appviewModel.isOnboarding {
                Onboarding()
                .environmentObject(appviewModel)}
            else {
                NavigationStack {
                    if appviewModel.isLogin {
                        ContentView()
                            .environmentObject(appviewModel)
                    }
                }
            }
        }
        
    }
}

