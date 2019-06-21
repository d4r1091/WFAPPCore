//
//  User.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 03/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct User : Codable {
    
    public var id: UUID?
    public var name: String?
    public var email: String
    public private(set) var password: String
    public var birthday: Date?
    public var location: String?
    public var gender: String?
    
    public init(id: UUID?,
                email: String,
                password: String,
                name: String?,
                birthday: Date?,
                location: String?,
                gender: String?) {
        
        self.id = id
        self.email = email
        self.password = password
        self.name = name
        self.birthday = birthday
        self.location = location
        self.gender = gender
    }
}
