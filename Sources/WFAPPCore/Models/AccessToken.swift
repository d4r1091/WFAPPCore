//
//  AccessToken.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 25/07/2019.
//

import Foundation

public struct AccessToken: Codable {
    
    typealias Token = String
    
    //MARK: Constants
    
    static let accessTokenExpirationInterval: TimeInterval = 3600
    static let length = 32
    
    //MARK: Properties
    
    public var id: UUID?
    private(set) var tokenString: Token
    private(set) var userID: UUID
    let expiryTime: Date
}
