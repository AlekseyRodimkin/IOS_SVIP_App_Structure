//
//  AuthView.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

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
