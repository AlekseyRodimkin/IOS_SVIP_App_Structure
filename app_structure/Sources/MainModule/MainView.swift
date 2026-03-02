//
//  MainView.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

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
