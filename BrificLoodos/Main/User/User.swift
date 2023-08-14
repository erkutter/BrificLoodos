//
//  User.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 14.08.2023.
//

import Foundation

class User {
    private var customer: CustomerModel.Payload?
    private var product: [ProductModel.Payload]?
    
    init(customer: CustomerModel.Payload?, product: [ProductModel.Payload]?) {
        self.customer = customer
        self.product = product
    }
    
    func getCustomerId() -> String {
        return self.customer?.id ?? ""
    }
    
    func getCustomerName() -> String {
        return self.customer?.name ?? ""
    }
    
    func getCustomerSurname() -> String {
        return self.customer?.surname ?? ""
    }
    
    func getCustomerPhoneNumber() -> String {
        return self.customer?.phoneNumber ?? ""
    }
    
    func getCustomerBirthday() -> String {
        return self.customer?.birthday ?? ""
    }
    
    func getCustomerEmail() -> String {
        return self.customer?.email ?? ""
    }
    
    func getCustomerGender() -> String {
        return self.customer?.gender ?? ""
    }
    
    func setCustomerName(name: String) {
        self.customer?.name = name
    }
    
    func setCustomerSurname(surname: String) {
        self.customer?.surname = surname
    }
    
    func setCustomerPhoneNumber(phoneNumber: String) {
        self.customer?.phoneNumber = phoneNumber
    }
    
    func setCustomerGender(gender: String) {
        self.customer?.gender = gender
    }
    
    func setCustomerEmail(email: String) {
        self.customer?.email = email
    }
    
    func setCustomerBirthday(birthday: String) {
        self.customer?.birthday = birthday
    }
    
    func getProducts() -> [ProductModel.Payload] {
        return self.product ?? []
    }
    
    func setProducts(product: [ProductModel.Payload]) {
        self.product = product
    }
}




