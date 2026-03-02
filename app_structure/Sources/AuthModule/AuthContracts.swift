//
//  AuthContracts.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

protocol AuthViewInput: AnyObject {}

protocol AuthViewOutput: AnyObject {
    func loginTapped()
    func registerTapped()
}
protocol AuthPresenterInput: AnyObject {
    /// Протокол презентера авторизации
    /// Имеет функцию презентования успешной авторизации
    func presentLoginSuccess()
}

protocol AuthWorkerProtocol {
    /// Протокол воркера авторизации
    /// Имеет функцию входа и регистрации
    func login() async -> Bool
    func register() async -> Bool
}
