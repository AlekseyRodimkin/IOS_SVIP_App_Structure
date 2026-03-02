```swift
import SwiftUI

enum MainConfigurator {
    ///Конфигуратор Главного модуля

    static func makeModule(container: AppDIContainer) -> some View {
        ///Функциия конфигурации модуля
        ///Создает воркеры, интерактор и презентер
        ///Возвращает представление

        let interactor = MainInteractor(
            session: container.sessionStore
        )
        let presenter = MainPresenter(router: container.router)
        interactor.presenter = presenter
        return MainView(output: interactor)
    }
}
```