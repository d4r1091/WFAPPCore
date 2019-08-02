//
//  DCDateFormatter.swift
//  DCDateFormatter
//
//  Created by Mehmet Salih Aslan on 6.02.2019.
//

import Foundation

public class DCDateFormatter {
    
    // MARK: - Properties
    
    public static var currentLocale: Locale? = Locale.current

    // MARK: - Shared
    
    static let shared = DCDateFormatter()
    
    // MARK: - Queue
    
    let cachedDateFormattersQueue = DispatchQueue(label: "DCDateFormatter.queue")
    
    // MARK: - Cached Formatters
    
    private var cachedDateFormatters = [String : DateFormatter]()
    
    private func cachedDateFormatter(withFormat format: Date.Format) -> DateFormatter {
        
        return cachedDateFormattersQueue.sync {
            
            let key = format.rawValue
            if let cachedFormatter = cachedDateFormatters[key] {
                return cachedFormatter
            }
            
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
            dateFormatter.dateFormat = format.rawValue
            
            cachedDateFormatters[key] = dateFormatter
            
            return dateFormatter
        }
    }
    
    /// Creates a Date using 'TimeInterval'
    func date(from timeInterval: TimeInterval) -> Date? {
        return Date(timeIntervalSince1970: timeInterval)
    }
    
    /// Creates a Date using 'dateString' and 'Date.Format'.
    func date(from dateString: String, format: Date.Format) -> Date? {
        let dateFormatter = cachedDateFormatter(withFormat: format)
        return dateFormatter.date(from: dateString)
    }
    
    /// Creates a String using 'Date'.
    func string(from date: Date, format: Date.Format) -> String {
        let dateFormatter = cachedDateFormatter(withFormat: format)
        return dateFormatter.string(from: date)
    }
}

public extension Date {
    
    enum Format {
        
        /// 2-digit year
        case yy
        
        /// 4-digit year
        case yyyy
        
        /// The numeric month of the year. A single M will use '1' for January.
        case M
        
        /// The numeric month of the year. A double M will use '01' for January.
        case MM
        
        /// The shorthand name of the month
        case MMM
        
        /// Full name of the month
        case MMMM
        
        /// Narrow name of the month
        case MMMMM
        
        /// The day of the month. A single d will use 1 for January 1st.
        case d
        
        /// The day of the month. A double d will use 01 for January 1st.
        case dd
        
        /// The day of week in the month
        case E
        
        /// The full name of the day
        case EEEE
        
        /// The 12-hour hour.
        case h
        
        /// The 12-hour hour padding with a zero if there is only 1 digit
        case hh
        
        /// The 24-hour hour.
        case H
        
        /// The 24-hour hour padding with a zero if there is only 1 digit.
        case HH
        
        /// AM / PM for 12-hour time formats
        case a
        
        /// The minute, with no padding for zeroes.
        case m
        
        /// The minute with zero padding.
        case mm
        
        /// The seconds, with no padding for zeroes.
        case s
        
        /// The seconds with zero padding.
        case ss
        
        /// Format: yyyy-MM-dd
        case date
        
        /// Format: yyyy-MM-dd HH:mm:ss
        case dateTime
        
        /// Format: dd.MM.yyyy
        case readableDate
        
        /// Format: dd.MM.yyyy HH:mm
        case readableDateTime
        
        /// Format: HH:mm
        case readableTime
        
        /// Format: d MMMM yyyy
        case readableDateWithSpace
        
        /// Format: d MMMM yyyy HH:mm
        case readableDateTimeWithSpace
        
        //MARK: Custom
        /// Custom Format
        case custom(rawValue: String)
        
        /// The corresponding `String` value.
        public var rawValue: String {
            switch self {
            case .yy:                           return "yy"
            case .yyyy:                         return "yyyy"
            case .M:                            return "M"
            case .MM:                           return "MM"
            case .MMM:                          return "MMM"
            case .MMMM:                         return "MMMM"
            case .MMMMM:                        return "MMMMM"
            case .d:                            return "d"
            case .dd:                           return "dd"
            case .E:                            return "E"
            case .EEEE:                         return "EEEE"
            case .h:                            return "h"
            case .hh:                           return "hh"
            case .H:                            return "H"
            case .HH:                           return "HH"
            case .a:                            return "a"
            case .m:                            return "m"
            case .mm:                           return "mm"
            case .s:                            return "s"
            case .ss:                           return "ss"
            case .date:                         return "dd-MM-yyyy"
            case .dateTime:                     return "dd-MM-yyyy HH:mm:ss"
            case .readableDate:                 return "dd.MM.yyyy"
            case .readableDateTime:             return "dd.MM.yyyy HH:mm"
            case .readableTime:                 return "HH:mm"
            case .readableDateWithSpace:        return "d MMMM yyyy"
            case .readableDateTimeWithSpace:    return "d MMMM yyyy HH:mm"
            case .custom(let rawValue):         return rawValue
            }
        }
        
        /// Init custom format
        init(_ rawValue: String) {
            self = .custom(rawValue: rawValue)
        }
        
    }
    
    /// Creates a Date using 'TimeInterval'
    static func from(_ timeInterval: TimeInterval) -> Date? {
        return Date(timeIntervalSince1970: timeInterval)
    }
    
    /// Creates a Date using 'dateString' and 'Date.Format'.
    static func from(_ dateString: String, format: Date.Format) -> Date? {
        return DCDateFormatter.shared.date(from: dateString, format: format)
    }
    
    /// Creates a String using 'Date'.
    func to(_ format: Date.Format) -> String {
        return DCDateFormatter.shared.string(from: self, format: format)
    }
    
}
