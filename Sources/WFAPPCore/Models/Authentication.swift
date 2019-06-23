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
    public var password: String? = nil
    
    enum CodingKeys: String, CodingKey {

        case username
        case password
    }
    
    public init(username: String?,
                password: String? = nil) {
        
        self.username = username
        self.password = password
    }
}
