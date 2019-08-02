//
//  Date+Additions.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 03/08/2019.
//

import Foundation

extension Date {
    
    
    var iso8601FullDate: Date? {
        
        let dateFormatter = ISO8601DateFormatter([.withFullDate])
        return dateFormatter.date(from: self.iso8601)
    }
    
}
