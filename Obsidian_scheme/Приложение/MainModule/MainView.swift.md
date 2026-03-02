```swift
import SwiftUI

struct MainView: View {
    /// Представление выхода
    let output: MainViewOutput

    var body: some View {
        VStack {
            Text("Main Screen")
            Button("Logout") {
                output.logoutTapped()
            }
        }
    }
}
```