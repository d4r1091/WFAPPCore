//
//  User.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 03/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct User {
    
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

extension User: Decodable {
    
    public init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decodeIfPresent(UUID.self, forKey: .id)
        name = try? container.decodeIfPresent(String.self, forKey: .name)
        email = try? container.decodeIfPresent(String.self, forKey: .email)
        password = try? container.decodeIfPresent(String.self, forKey: .password)
        
        do {
            let date = try container.decodeIfPresent(Date.self, forKey: .birthday)
            birthday = date
        } catch {
            throw DecodingError.dataCorruptedError(forKey: .birthday,
                                                   in: container,
                                                   debugDescription: "Date string does not match format expected by formatter.")
        }
        
        location = try? container.decodeIfPresent(String.self, forKey: .location)
        gender = try? container.decodeIfPresent(String.self, forKey: .gender)
        profileImageURL = try? container.decodeIfPresent(URL.self, forKey: .profileImageURL)
    }
}

extension User: Encodable {
    
    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(id, forKey: .id)
        try? container.encodeIfPresent(name, forKey: .name)
        try? container.encodeIfPresent(email, forKey: .email)
        try? container.encodeIfPresent(password, forKey: .password)
        try? container.encodeIfPresent(birthday?.iso8601FullDate, forKey: .birthday)
        try? container.encodeIfPresent(location, forKey: .location)
        try? container.encodeIfPresent(gender, forKey: .gender)
        try? container.encodeIfPresent(profileImageURL, forKey: .profileImageURL)

    }
}
