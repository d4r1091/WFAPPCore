//
//  RefreshToken.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 25/07/2019.
//

import Foundation

struct RefreshToken: Codable {
    
    typealias Token = String
    
    //MARK: Properties
    
    var id: UUID?
    let tokenString: Token
    let userID: UUID
}
