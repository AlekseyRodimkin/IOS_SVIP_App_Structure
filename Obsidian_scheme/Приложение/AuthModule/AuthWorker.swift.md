```swift
final class AuthWorker: AuthWorkerProtocol {
    ///Воркер входа и регистрации
    
    func login() async -> Bool {
        /// Метод входа
        return true   // мок
    }

    func register() async -> Bool {
        /// Метод регистрации
        return true   // мок
    }
}
```