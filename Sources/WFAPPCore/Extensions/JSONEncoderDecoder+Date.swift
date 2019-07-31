//
//  JSONEncoderDecoder+Date.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 30/07/2019.
//

import Foundation

extension JSONDecoder.DateDecodingStrategy {
    
    static let iso8601withFractionalSeconds = custom {
        
        let container = try $0.singleValueContainer()
        let string = try container.decode(String.self)
        guard let date = Formatter.iso8601.date(from: string) else {
            throw DecodingError.dataCorruptedError(in: container,
                                                   debugDescription: "Invalid date: " + string)
        }
        return date
    }
}

extension JSONEncoder.DateEncodingStrategy {
    
    static let iso8601withFractionalSeconds = custom {
        
        var container = $1.singleValueContainer()
        try container.encode(Formatter.iso8601.string(from: $0))
    }
}
