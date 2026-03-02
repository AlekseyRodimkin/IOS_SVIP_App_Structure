//
//  MainInteractor.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

@MainActor
final class MainInteractor: MainViewOutput {
    /// Интерактор главного модуля
    /// Имеет метод выхода
    
    private let session: SessionStore
    var presenter: MainPresenterInput?
    
    init(session: SessionStore) {
        self.session = session
    }
    
    func logoutTapped() {
        /// Метод выхода
        /// Меняет флаг авторизации через вызов воркера или напрямую в Контейнере DIContainer
        /// вызывает метод презентера для отображения результата (или роутинга)
        session.isAuthenticated = false
        presenter?.presentLogout()
    }
}
