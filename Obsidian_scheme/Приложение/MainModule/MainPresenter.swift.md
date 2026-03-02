```swift
final class MainPresenter: MainPresenterInput {
    /// Презентер главного модуля (он же роутер модуля)
    /// Имеет метод реагирования на успешный выход
    private let router: AppRouterProtocol

    init(router: AppRouterProtocol) {
        self.router = router
    }

    func presentLogout() {
        router.showAuth()
    }
}
```