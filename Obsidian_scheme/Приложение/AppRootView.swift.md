```swift
import SwiftUI

struct AppRootView: View {
    /// Корневое представление - единственная точка контроля навигации между крупными модулями.
    /// Наблюдает за кантейниром и роутером
    @ObservedObject var container: AppDIContainer
    @ObservedObject private var router: AppRouter

    init(container: AppDIContainer) {
        self.container = container
        self._router = ObservedObject(wrappedValue: container.router)
    }

    var body: some View {
        Group {
            switch router.route {
            case .auth:
                AuthConfigurator.makeModule(container: container)
            case .main:
                MainConfigurator.makeModule(container: container)
            }
        }
    }
}
```