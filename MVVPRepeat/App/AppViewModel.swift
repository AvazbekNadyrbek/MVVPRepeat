//
//  AppViewModel.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 16.07.25.
//

import Foundation
import SwiftUI

@MainActor
class AppViewModel: ObservableObject {
    
    @Published var isLogin: Bool = true
    @Published  var isOnboarding: Bool = true
    func login() {
        isLogin = true
    }
    
    func logout() {
        isLogin = false
        isOnboarding = true
    }
}
