//
//  AuthenticationResponseModel.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 03/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct AuthenticationResponse: Codable {
    
    public let accessToken: String?
    public let tokenType: String?
    public let expiresIn: Int?
    public let refreshToken: String?
    
    enum CodingKeys: String, CodingKey {
        
        case accessToken = "access_token"
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case refreshToken = "refresh_token"
    }
}
