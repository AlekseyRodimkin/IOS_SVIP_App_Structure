```swift
import SwiftUI
import Combine

final class SessionStore: ObservableObject {
    /// Наблюдаемый объект хранящий настройки Сессии
    /// Принадлежит DIContainer
    @Published var isAuthenticated: Bool = false
}
```