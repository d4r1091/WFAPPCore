//
//  Plant.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 24/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct Plant: Decodable {
    
    //MARK: Properties

    public var id: String?
    public var name: String?
    public var imageURL: URL?
    public var attributes: [Attribute]?
    
    //MARK: Initializers

    public init(id: String? = nil,
                name: String? = nil,
                imageURL: URL? = nil,
                attributes: [Attribute]? = nil) {
        
        self.id = id
        self.name = name
        self.imageURL = imageURL
        self.attributes = attributes
    }
    
    //MARK: Codable
    
    private enum CodingKeys: String, CodingKey {
        
        case id
        case name
        case imageURL = "image_url"
        case attributes
    }
}
