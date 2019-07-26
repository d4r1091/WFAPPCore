//
//  AccessToken.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 25/07/2019.
//

import Foundation

public struct AccessToken: Codable {
    
    public typealias Token = String
    
    //MARK: Constants
    
    static let accessTokenExpirationInterval: TimeInterval = 3600
    static let length = 32
    
    //MARK: Properties
    
    public var id: UUID?
    public private(set) var tokenString: Token
    public private(set) var userID: UUID
    public let expiryTime: Date
}
