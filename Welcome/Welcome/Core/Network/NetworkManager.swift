//
//  NetworkManager.swift
//  Welcome
//
//  Created by FiratGulec on 13.10.2024.
//

import Foundation
import Alamofire

struct NetworkConfiguration {
    let baseURL: URL
}

protocol INetworkManager {
    func fetch<T: Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T?
    var configration: NetworkConfiguration { get set }
}

extension NetworkManager {
    static let networkManager: INetworkManager = NetworkManager(configuration: NetworkConfiguration(baseURL: NetworkPath.baseURL.absoluteURL))
}


class NetworkManager: INetworkManager {
    internal var configration: NetworkConfiguration
    
    init(configuration: NetworkConfiguration) {
        self.configration = configuration
    }
    
    func fetch<T: Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T? {
        let dataRequest = AF.request("\(configration.baseURL.appendingPathComponent(path.rawValue))", method: method)
            .validate()
            .serializingDecodable(T.self)
        
        let result = await dataRequest.response
        guard let value = result.value else {
            print("ERROR : \\(String(discribing: result.error))")
            return nil
        }
        
        return value
    }
}

enum NetworkPath: String {
    case users = "api/users"
    
    static let baseURL: URL = .init(string: "https://reqres.ini")!
}
