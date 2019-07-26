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
    
    public static let accessTokenExpirationInterval: TimeInterval = 3600
    public static let length = 32
    
    //MARK: Properties
    
    public var id: UUID?
    public private(set) var tokenString: Token
    public private(set) var userID: UUID
    public let expiryTime: Date
    
    //MARK: Initializers
    
    init(userID: UUID) throws {

        self.tokenString = AccessToken.encodedToken
        self.userID = userID
        self.expiryTime = Date().addingTimeInterval(AccessToken.accessTokenExpirationInterval)
    }
}

private extension AccessToken {
    
    private static var encodedToken: String {
        
        typealias Byte = UInt8
        typealias Bytes = [Byte]
        let random = Bytes(repeating: 0, count: AccessToken.length)

        return Data(random).base64EncodedString()
    }
    
}
