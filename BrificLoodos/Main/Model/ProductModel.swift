//
//  ProductModel.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 14.08.2023.
//

import Foundation

struct ProductModel: Decodable {
    let payload: [Payload]
    
    struct Payload: Codable {
        let id: String
        let name: String
        let distance: String
        let benefitTitle: String
        let benefitDescription: String
    }
}
