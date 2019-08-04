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
        let formattedDate = string(from: date, format: .date)
        return formattedDate
    }
    
    public func dateOfBirth(from string: String) -> Date? {
        let formattedDate = date(from: string, format: .date)
        return formattedDate
    }
}
