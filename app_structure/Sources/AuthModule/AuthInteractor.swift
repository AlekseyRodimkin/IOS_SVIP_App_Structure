//
//  AuthInteractor.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

@MainActor
final class AuthInteractor: AuthViewOutput {
    /// Интерактор авторизации
    /// Имеет методы входа и регистрации
    private let worker: AuthWorkerProtocol
    private let session: SessionStore
    var presenter: AuthPresenterInput?
    
    init(worker: AuthWorkerProtocol,
         session: SessionStore) {
        self.worker = worker
        self.session = session
    }
    
    func loginTapped() {
        /// Метод входа
        /// При успешном ответе от воркера меняет переменную а Контейнере DIContainer и
        /// вызывает метод презентера для отображения результата (или роутинга)
        Task {
            let success = await worker.login()
            if success {
                session.isAuthenticated = true
                presenter?.presentLoginSuccess()
            }
        }
    }
    
    func registerTapped() {
        /// Метод регистрации
        Task {
            let success = await worker.register()
            if success {
//                session.isAuthenticated = true
//                presenter?.presentLoginSuccess()
            }
        }
    }
    
}
