//
//  AppDIContainer.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

import SwiftUI
import Combine

final class AppDIContainer: ObservableObject {
    /// Наблюдаемый объект - Контейнер
    /// Хранит общие зависимости
    /// Передает SessionStore в модули
    /// Передаёт Router
    
    let sessionStore = SessionStore()
    @Published var router = AppRouter()

    init() {
        router.route = sessionStore.isAuthenticated ? .main : .auth
    }
}
