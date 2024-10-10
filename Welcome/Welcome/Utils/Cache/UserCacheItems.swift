//
//  UserCacheItems.swift
//  Welcome
//
//  Created by FiratGulec on 30.09.2024.
//

import Foundation

enum UserCacheItems: String {
    case onboard = "onboard"
}

protocol UserCacheProtocol {
    func read(key: UserCacheItems) -> String
    func save(key: UserCacheItems, value: String)
    func remove(key: UserCacheItems)
}

extension UserCacheProtocol {
    /// Remove user data
    /// - Parameter key: cache item key
    func remove(key: UserCacheItems) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
    
    /// Read user data
    /// - Parameter key: cache item key
    /// - Returns: cache value or empty
    func read(key: UserCacheItems) -> String {
        // If user doesn't use userdefault it won't work. you should use coredata etc.
        guard let value = UserDefaults.standard.string(forKey: key.rawValue) else { return "" }
        return value
    }
    
    /// Save user data
    /// - Parameters:
    ///   - key: cache item key
    ///   - value: whatever user value as a string
    func save(key: UserCacheItems, value: String) {
        UserDefaults.standard.setValue(value, forKey: key.rawValue)
    }
}

struct UserDefaultCache: UserCacheProtocol {
    
}
