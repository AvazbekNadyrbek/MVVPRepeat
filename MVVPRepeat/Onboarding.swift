//
//  Onboarding.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 18.07.25.
//

import Foundation
import SwiftUI

struct Onboarding: View {
    
//    @Environment(AppViewModel.self) var appViewModel: AppViewModel
    @Environment(LoginViewModel.self) var loginViewModel: LoginViewModel
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading, spacing: 1) {
                Text("Добро")
                    .font(.largeTitle)
                Text("Пожаловать")
                    .font(.largeTitle)
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 30)                            // optional inset from screen edges
            
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Text("Social App")
                    .font(.title.bold())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)  // center by default
        }
        .foregroundStyle(.white)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                loginViewModel.isOnboarding.toggle()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)

    }
}

#Preview {
    Onboarding()
        .environment(LoginViewModel())
}
