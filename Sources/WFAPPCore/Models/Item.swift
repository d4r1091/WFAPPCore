//
//  Item.swift
//  TRC-TicTrac-iOS
//
//  Created by Dario Carlomagno on 09/10/2018.
//

import UIKit

struct Item {
    
    //MARK: Properties
    
    var title: String?
    var subtitle: String?
    
    var image: UIImage?
    var imageURL: URL?
    
    var key: String?
    var value: Any?
    
    var identifier: String?
    
    var items: [Any]?
    
    var color: UIColor?
    
    var keyboardType: UIKeyboardType = .default
    var autocorrectionType: UITextAutocorrectionType = .default
    var capitalizationType: UITextAutocapitalizationType = .none
    
    var minimumDate: Date?
    var maximumDate: Date?
    
}

extension Item {
    
    //MARK: Initializer
    
    init(title: String?,
         imageURL: URL? = nil,
         identifier: String? = nil) {
        
        self.init()
        self.title = title
        self.imageURL = imageURL
        self.identifier = identifier
    }
}
