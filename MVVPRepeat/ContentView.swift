//
//  ContentView.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 15.07.25.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(LoginViewModel.self) var loginViewModel
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome,")
                Text(loginViewModel.username)
            }
            .font(.title)
            Spacer()
            Button {
                loginViewModel.isLogged.toggle()
                loginViewModel.username = ""
                loginViewModel.password = ""
            } label: {
                Text("Log out")
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(Color.black)
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
        .environment(LoginViewModel())
}
