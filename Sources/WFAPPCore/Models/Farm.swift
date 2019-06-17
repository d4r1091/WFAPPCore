//
//  Farm.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 24/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct Farm: Decodable {
    
    public let identifier: String
    public let name: String?
    public let imageURL: URL?
    public let plants: [String]?
    
    enum CodingKeys: String, CodingKey {
        
        case identifier
        case name
        case imageURL = "image"
        case plants
    }
    
    public init(identifier: String,
                name: String?,
                imageURL: URL?,
                plants:[String]?) {
        
        self.identifier = identifier
        self.name = name
        self.imageURL = imageURL
        self.plants = plants
    }
}
