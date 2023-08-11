//
//  UserModel.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 11.08.2023.
//

import Foundation

struct CustomerModel: Decodable {
    let payload: Payload
    
    struct Payload: Codable {
        let id: String
        let name: String
        let surname: String
        let phoneNumber: String
        let gender: String
        let email: String
        let birthday: String
    }
}
