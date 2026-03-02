//
//  AppRouter.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

import SwiftUI
import Combine

protocol AppRouterProtocol: AnyObject {
    func showAuth()
    func showMain()
}

final class AppRouter: ObservableObject, AppRouterProtocol {
    
    enum Route {
        case auth
        case main
    }
    
    @Published var route: Route = .auth
    
    func showAuth() {
        route = .auth
    }
    
    func showMain() {
        route = .main
    }
}
