```swift
protocol MainViewOutput: AnyObject {
    func logoutTapped()
}

protocol MainPresenterInput: AnyObject {
    func presentLogout()
}
```