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
    public var email: String?
    public private(set) var password: String?
    public var birthday: Date?
    public var location: String?
    public var gender: String?
    public var profileImageURL: URL?
    
    public init(id: UUID? = nil,
                email: String? = nil,
                password: String? = nil,
                name: String? = nil,
                birthday: Date? = nil,
                location: String? = nil,
                gender: String? = nil,
                profileImageURL: URL? = nil) {
        
        self.id = id
        self.email = email
        self.password = password
        self.name = name
        self.birthday = birthday
        self.location = location
        self.gender = gender
        self.profileImageURL = profileImageURL
    }
}

extension User {
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case name
        case email
        case password
        case birthday
        case location
        case gender
        case profileImageURL = "image_url"
    }
    
}
