//
//  AuthenticationModel.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 20/02/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct Authentication: Codable {
    
    public let email: String
    public let password: String
    
    public init(email: String,
                password: String) {
        
        self.email = email
        self.password = password
    }
}
