//
//  Farm.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 24/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct Farm: Decodable {
    
    public var id: UUID?
    public var name: String?
    public var imageURL: URL?
    public var plants: [String]?
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case name
        case imageURL = "image"
        case plants
    }
    
    public init(id: UUID?,
                name: String?,
                imageURL: URL?,
                plants:[String]?) {
        
        self.id = id
        self.name = name
        self.imageURL = imageURL
        self.plants = plants
    }
}
