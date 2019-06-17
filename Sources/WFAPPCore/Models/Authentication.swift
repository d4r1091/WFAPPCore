//
//  AuthenticationModel.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 20/02/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct Authentication: Codable {
    
    public let username: String?
    public let password: String?
    public let grantType: String?
    public var authToken: String? = nil
    
    public enum GrantType: String {
        case password
        case token
    }

    enum CodingKeys: String, CodingKey {

        case username
        case password
        case authToken = "token"
        case grantType = "grant_type"
    }
    
    public init(username: String?,
                password: String?,
                grantType: String?,
                authToken: String? = nil) {
        
        self.username = username
        self.password = password
        self.grantType = grantType
        self.authToken = authToken
    }
}
