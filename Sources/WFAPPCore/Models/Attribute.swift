//
//  Attribute.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 27/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct Attribute: Decodable {
    
    public var id: String?
    public let name: String?
    public let value: Any?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case value
    }
    
    public init(from decoder: Decoder) throws {
        
        do {
            
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try container.decodeIfPresent(String.self, forKey: .id)
            name = try? container.decodeIfPresent(String.self, forKey: .name)
            
            if let stringProperty = try? container.decode(String.self, forKey: .value) {
                value = stringProperty
            } else if let intProperty = try? container.decode(Int.self, forKey: .value) {
                value = intProperty
            } else if let boolProperty = try? container.decode(Bool.self, forKey: .value) {
                value = boolProperty
            } else if let doubleProperty = try? container.decode(Double.self, forKey: .value) {
                value = doubleProperty
            } else {
                throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: container.codingPath, debugDescription: "Value not recognised among the definited ones"))
            }
        }
    }
}
