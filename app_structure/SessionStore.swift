//
//  SessionStore.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

import SwiftUI
import Combine

final class SessionStore: ObservableObject {
    /// Наблюдаемый объект хранящий настройки Сессии
    /// Принадлежит DIContainer
    @Published var isAuthenticated: Bool = false
}
