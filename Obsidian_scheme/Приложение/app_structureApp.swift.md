```swift
import SwiftUI

@main
struct app_structure: App {
    /// Точка входа в приложение
    /// Инициализируется контейнер и передается в корневое представление
    @StateObject private var container = AppDIContainer()
    var body: some Scene {
        WindowGroup {
            AppRootView(container: container)
        }
    }
}
```
