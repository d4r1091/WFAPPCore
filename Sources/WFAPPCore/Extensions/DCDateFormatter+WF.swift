//
//  DCDateFormatter+WF.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 02/08/2019.
//

import Foundation

extension DCDateFormatter {
    
    // MARK: - DOB
    
    public func dateOfBirthAsString(from date: Date) -> String {
        return string(from: date, format: .readableDateWithSpace)
    }
    
    public func dateOfBirth(from string: String) -> Date? {
        return date(from: string, format: .readableDateWithSpace)
    }
}
