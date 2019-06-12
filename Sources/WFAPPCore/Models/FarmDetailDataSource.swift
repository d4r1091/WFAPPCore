//
//  FarmDetailDataSource.swift
//  wallfarmapp
//
//  Created by Dario Carlomagno on 06/05/2019.
//  Copyright © 2019 Wallfarm srl. All rights reserved.
//

import Foundation

struct FarmDetailDataSource {
    
    //MARK: - Properties
    
    var sections: [Any?]?
    
    var attributes: [Attribute]?
    var externalItems: [Item] = [Item(title: Strings.FarmDetail.Item.Title.garden,
                                      imageURL: RemoteImageView.Placeholder.tileURL,
                                      identifier: Identifiers.garden.rawValue),
                                 Item(title: Strings.FarmDetail.Item.Title.statistics,
                                      imageURL: RemoteImageView.Placeholder.tileURL,
                                      identifier: Identifiers.statistics.rawValue)]
    enum Identifiers: String {
        case garden
        case statistics
    }
    
    enum Sections: Int {
        case attributes
        case externalItems
    }
}

extension FarmDetailDataSource {
    
    //MARK: - Initializer
    
    init(attributes: [Attribute]?) {
        self.init()
        self.attributes = attributes
        sections = [attributes, externalItems]
    }
    
}
