//
//  AuthPresenter.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

final class AuthPresenter: AuthPresenterInput {
    /// Презентер модуля авторизации (он же роутер модуля)
    /// Имеет метод реагирования на успешную авторизацию
    
    private let router: AppRouterProtocol
    
    init(router: AppRouterProtocol) {
        self.router = router
    }
    
    func presentLoginSuccess() {
        router.showMain()
    }
}
