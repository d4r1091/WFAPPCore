//
//  AuthenticationResponseModel.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 03/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

struct AuthenticationResponse: Codable {
    
    let accessToken: String?
    let tokenType: String?
    let expiresIn: Int?
    let refreshToken: String?
    
    enum CodingKeys: String, CodingKey {
        
        case accessToken = "access_token"
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case refreshToken = "refresh_token"
    }
    
}
