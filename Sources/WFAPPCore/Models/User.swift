//
//  User.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 03/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct User : Codable {
    
    public let name: String?
    public let birthday: Date?
    public let location: String?
    public let gender: String?
    
    public init(name: String?,
                birthday: Date?,
                location: String?,
                gender: String?) {
        
        self.name = name
        self.birthday = birthday
        self.location = location
        self.gender = gender
    }
}
