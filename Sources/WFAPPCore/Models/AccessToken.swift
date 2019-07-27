//
//  AccessToken.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 25/07/2019.
//

import Foundation

public struct AccessToken: Codable, Tokenable {
    
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
    
    public init(userID: UUID) throws {

        self.tokenString = AccessToken.encodedToken
        self.userID = userID
        self.expiryTime = Date().addingTimeInterval(AccessToken.accessTokenExpirationInterval)
    }
}

public struct AuthenticationResponse: Codable {
    
    //MARK: Properties

    public let accessToken: AccessToken.Token
    public let expiresIn: TimeInterval
    public let refreshToken: RefreshToken.Token
    
    //MARK: Initializers
    
    public init(accessToken: AccessToken, refreshToken: RefreshToken) {
        self.accessToken = accessToken.tokenString
        self.expiresIn = AccessToken.accessTokenExpirationInterval //Not honored, just an estimate
        self.refreshToken = refreshToken.tokenString
    }
    
    //MARK: Codable
    
    private enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case expiresIn = "expires_in"
        case refreshToken = "refresh_token"
    }
}

public struct RefreshTokenResponse: Codable {
    
    //MARK: Properties
    
    public let refreshToken: RefreshToken.Token
    
    private enum CodingKeys: String, CodingKey {
        case refreshToken = "refresh_token"
    }
}
