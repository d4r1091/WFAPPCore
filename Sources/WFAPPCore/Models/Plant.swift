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
    public var scientificName: String?
    public var cultivationDays: Int?
    public var imageURL: URL?
    
    //MARK: Initializers

    public init(id: String? = nil,
                name: String? = nil,
                scientificName: String? = nil,
                cultivationDays: Int? = nil,
                imageURL: URL? = nil) {
        
        self.id = id
        self.name = name
        self.scientificName = scientificName
        self.cultivationDays = cultivationDays
        self.imageURL = imageURL
    }
    
    //MARK: Codable
    
    private enum CodingKeys: String, CodingKey {
        
        case id
        case name
        case scientificName = "scientific_name"
        case cultivationDays = "cultivation_days"
        case imageURL = "image_url"
    }
}
