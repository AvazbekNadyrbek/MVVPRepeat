//
//  Onboarding.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 18.07.25.
//

import Foundation
import SwiftUI

struct Onboarding: View {
    
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        VStack {
            Text("OnBoarding")

        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                appViewModel.isOnboarding.toggle()
            }
        }
    }
}
