//
//  Image.swift
//  WFAPPCore
//
//  Created by Dario Carlomagno on 25/06/2019.
//

import Foundation

public struct Image: Codable {
    
    public var id: UUID?
    public var imageName: String?
    public var imageData: Data?
    public var imageURL: URL?
    
    public init(id: UUID?,
                imageName: String?,
                imageData: Data?,
                imageURL: URL?) {
        
        self.id = id
        self.imageName = imageName
        self.imageData = imageData
        self.imageURL = imageURL
    }
}
