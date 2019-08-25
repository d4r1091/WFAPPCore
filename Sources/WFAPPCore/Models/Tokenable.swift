//
//  Tokenable.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 27/07/2019.
//

import Foundation
#if canImport(Security)
import Security
#endif

protocol Tokenable {
    
    static var encodedToken: String { get }
}

extension Tokenable {
    
    static var encodedToken: String {
        
        guard let data = NSMutableData(length: AccessToken.length) else {
            return ""
        }
        
        let _ = SecRandomCopyBytes(kSecRandomDefault, data.length, data.mutableBytes)
        
        return data.base64EncodedString(options: [])
    }
}
