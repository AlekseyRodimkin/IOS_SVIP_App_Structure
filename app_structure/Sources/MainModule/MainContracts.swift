//
//  MainContracts.swift
//  app_structure
//
//  Created by Алексей Родимкин on 02.03.2026.
//

protocol MainViewOutput: AnyObject {
    func logoutTapped()
}
protocol MainPresenterInput: AnyObject {
    func presentLogout()
}
