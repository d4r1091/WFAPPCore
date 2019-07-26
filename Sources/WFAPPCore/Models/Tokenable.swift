//
//  Tokenable.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 26/07/2019.
//

import Foundation

protocol Tokenable {
    
    static var encodedToken: String { get }
}

extension Tokenable {
    
    static var encodedToken: String {
        
        typealias Byte = UInt8
        typealias Bytes = [Byte]
        let random = Bytes(repeating: 0, count: AccessToken.length)
        
        return Data(random).base64EncodedString()
    }
}
