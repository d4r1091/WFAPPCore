//
//  RefreshToken.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 25/07/2019.
//

import Foundation

public struct RefreshToken: Codable {
    
    public typealias Token = String
    
    //MARK: Properties
    
    public var id: UUID?
    public let tokenString: Token
    public let userID: UUID
}
