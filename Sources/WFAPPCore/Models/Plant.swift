//
//  Plant.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 24/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct Plant: Decodable {
    
    public let identifier: String
    public let name: String?
    public let attributes: [Attribute]?
    
    public init(identifier: String,
                name: String?,
                attributes: [Attribute]?) {
        
        self.identifier = identifier
        self.name = name
        self.attributes = attributes
    }
}
