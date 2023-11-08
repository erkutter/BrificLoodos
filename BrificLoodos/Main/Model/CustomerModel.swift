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
        var name: String
        var surname: String
        var phoneNumber: String
        var gender: String
        var email: String
        var birthday: String
    }
}
