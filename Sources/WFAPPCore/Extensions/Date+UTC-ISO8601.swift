//
//  Date+UTC-ISO8601.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 30/07/2019.
//

import Foundation

extension ISO8601DateFormatter {
    
    convenience init(_ formatOptions: Options,
                     timeZone: TimeZone = TimeZone(secondsFromGMT: 0)!,
                     locale: Locale = Locale(identifier: "en_US_POSIX")) {
        self.init()
        self.formatOptions = formatOptions
        self.timeZone = timeZone
    }
}

extension Formatter {
    
    static let iso8601 = ISO8601DateFormatter([.withInternetDateTime, .withFractionalSeconds])
}

extension Date {
    
    var iso8601: String {
        return Formatter.iso8601.string(from: self)
    }
}

extension String {
    
    var iso8601: Date? {
        return Formatter.iso8601.date(from: self)
    }
}

extension JSONDecoder.DateDecodingStrategy {
    
    public static let iso8601withFractionalSeconds = custom {
        
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
    
    public static let iso8601withFractionalSeconds = custom {
        
        var container = $1.singleValueContainer()
        try container.encode(Formatter.iso8601.string(from: $0))
    }
}

