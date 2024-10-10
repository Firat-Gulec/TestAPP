//
//  OnboardViewModel.swift
//  Welcome
//
//  Created by FiratGulec on 30.09.2024.
//

import Foundation

class OnboardViewModel: ObservableObject {
    @Published var currentIndex: Int = 0
    @Published var isHomeRedirect: Bool = false
    private let cache = UserDefaultCache()
    
    
    private func ischeckUserFirstLaunch() -> Bool {
        return cache.read(key: .onboard).isEmpty
    }
    
    func checkUserFirstLaunch() {
        guard !ischeckUserFirstLaunch() else {
            redirectToHome()
            return
        }
        setUserFirstLaunch()
    }
    
    func saveUserFirstLaunch() {
        setUserFirstLaunch()
        redirectToHome()
    }
    
    private func redirectToHome() {
        isHomeRedirect = true
    }
    
    private func setUserFirstLaunch() {
        cache.save(key: .onboard, value: "Okay")
    }
}

