//
//  Farm.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 24/03/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

struct Farm: Decodable {
    
    let identifier: String
    let name: String?
    let imageURL: URL?
    let plants: [String]?
    
    enum CodingKeys: String, CodingKey {
        
        case identifier
        case name
        case imageURL = "image"
        case plants
    }
}
