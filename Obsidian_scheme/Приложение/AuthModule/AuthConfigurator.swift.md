```swift
import SwiftUI

enum AuthConfigurator {
    ///Конфигуратор модуля Авторизации

    static func makeModule(container: AppDIContainer) -> some View {
        ///Функциия конфигурации модуля
        ///Создает воркеры, интерактор и презентер
        ///Возвращает представление
        let worker = AuthWorker()
        let interactor = AuthInteractor(
            worker: worker,
            session: container.sessionStore
        )
        let presenter = AuthPresenter(router: container.router)
        interactor.presenter = presenter
        return AuthView(output: interactor)
    }
}
```