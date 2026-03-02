```swift
import SwiftUI

struct AuthView: View {
    /// Представление входа
    let output: AuthViewOutput
    
    var body: some View {
        VStack {
            Text("Auth Screen")
            Button("Login") {
                output.loginTapped()
            }
        }
    }
}
```