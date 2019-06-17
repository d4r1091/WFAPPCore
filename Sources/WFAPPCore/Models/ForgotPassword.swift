//
//  ForgotPasswordModel.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 03/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct ForgotPassword: Codable {
    
    public let email: String
    
    public init(email: String) {
        
        self.email = email
    }
}
