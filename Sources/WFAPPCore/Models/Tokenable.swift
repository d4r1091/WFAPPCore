//
//  Tokenable.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 27/07/2019.
//

import Foundation

protocol Tokenable {
    
    static var encodedToken: String { get }
}

extension Tokenable {
    
    static var encodedToken: String {
        
        do {
            let byteArray = try URandom().bytes(count: AccessToken.length)
            let data = Data(bytes: byteArray, count: AccessToken.length)
            return data.base64EncodedString(options: [])
        } catch {
            return ""
        }
    }
}
