//
//  LoginViewModel.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 18.07.25.
//

import Observation

@Observable
@MainActor // Чтобы все изменения UI происходили в главном потоке
class LoginViewModel {
    var username = ""
    var password = ""
    var errorMessage: String?
    var isLoading = false
    var isLogged = false
    var isOnboarding: Bool = true
    func login() {
        // Простое правило: не давать войти с пустыми полями
        guard !username.isEmpty, !password.isEmpty else {
            errorMessage = "Имя пользователя и пароль не могут быть пустыми."
            return
        }
        
        errorMessage = nil
        isLogged = true
        isOnboarding = false
        
        // В реальном приложении здесь был бы сетевой запрос с username и password.
        // Мы просто имитируем его и вызываем метод нашего глобального менеджера.
        // SessionManager уже содержит логику "фейкового" входа.
        // В реальном приложении isLoading стал бы false после ответа от сервера.
        // Но так как наш SessionManager переключит View, это не так важно здесь.
        // Сетевой запрос / SessionManager.login() можно добавить здесь,
        // но для текущей демо-версии он не нужен.
    }
}
