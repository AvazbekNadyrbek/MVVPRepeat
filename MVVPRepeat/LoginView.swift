//
//  LoginView.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 18.07.25.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(LoginViewModel.self) var viewModel     // ← получаем модель из окружения
    
    var body: some View {
        @Bindable var bindableViewModel = viewModel
        
        VStack(alignment: .leading, spacing: 20) {
            Text("Authentication")
                .font(.title.bold())
            Spacer()
            // Поле «Username»
            TextField("Username", text: $bindableViewModel.username)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .foregroundColor(.black) // ← исправлено здесь
            // Поле «Password»
            SecureField("Password", text: $bindableViewModel.password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .foregroundColor(.black)
            // Кнопка «Log in»
            Button {
                viewModel.login()                 // ← методы вызываем через обычный viewModel
            } label: {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(.circular)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                } else {
                    Text("Log in")
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
            }
            Spacer()
            // Показываем ошибку, если она есть
            if let error = viewModel.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .topLeading)
        .padding()
        .background(Color.black)
        .foregroundColor(.white)
        
        
    }
}

#Preview {
    LoginView()
        .environment(LoginViewModel())
}
