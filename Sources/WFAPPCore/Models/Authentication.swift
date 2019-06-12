//
//  AuthenticationModel.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 20/02/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

struct Authentication: Codable {
    
    let username: String?
    let password: String?
    let grantType: String?
    let authToken: String? = nil
    
    enum GrantType: String {
        case password
        case token
    }

    enum CodingKeys: String, CodingKey {

        case username
        case password
        case authToken = "token"
        case grantType = "grant_type"
    }
}
