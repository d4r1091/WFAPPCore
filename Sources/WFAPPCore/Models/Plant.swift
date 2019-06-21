//
//  Plant.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 24/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

public struct Plant: Decodable {
    
    public var id: UUID?
    public var name: String?
    public var attributes: [Attribute]?
    
    public init(id: UUID?,
                name: String?,
                attributes: [Attribute]?) {
        
        self.id = id
        self.name = name
        self.attributes = attributes
    }
}
