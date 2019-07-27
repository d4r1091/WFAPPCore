//
//  RefreshToken.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 25/07/2019.
//

import Foundation

public struct RefreshToken: Codable, Tokenable {
    
    public typealias Token = String
    
    //MARK: Properties
    
    public var id: UUID?
    public let tokenString: Token?
    public let userID: UUID
    
    //MARK: Initializers
    
    public init(userID: UUID) throws {
        self.tokenString = RefreshToken.encodedToken
        self.userID = userID
    }
}
