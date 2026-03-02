```swift
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
```