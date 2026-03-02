//
//  AuthWorker.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

final class AuthWorker: AuthWorkerProtocol {
    ///Воркер входа и регистрации
    
    func login() async -> Bool {
        /// Метод входа
        return true   // мок
    }
    
    func register() async -> Bool {
        /// Метод регистрации
        return true   // мок
    }
}

