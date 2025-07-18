//
//  AppViewModel.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 16.07.25.
//

import Foundation
import SwiftUI

@Observable class AppViewModel {
    
    var isLogin: Bool = true
    var isOnboarding: Bool = true
    func login() {
        isLogin = true
    }
    
    func logout() {
        isLogin = true
        isOnboarding = true
    }
}
