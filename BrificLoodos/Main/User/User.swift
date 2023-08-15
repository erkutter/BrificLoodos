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
    
    var customerId: String {
        get { return self.customer?.id ?? "" }
    }
    
    var customerName: String {
        get { return self.customer?.name ?? "" }
        set(name) { self.customer?.name = name }
    }
    
    var customerSurname: String {
        get { return self.customer?.surname ?? "" }
        set(surname) { self.customer?.surname = surname }
    }
    
    var customerPhoneNumber: String {
        get { return self.customer?.phoneNumber ?? "" }
        set(phoneNumber) { self.customer?.phoneNumber = phoneNumber }
    }
    
    var customerBirthday: String {
        get { return self.customer?.birthday ?? "" }
        set(birthday) { self.customer?.birthday = birthday }
    }
    
    var customerEmail: String {
        get { return self.customer?.email ?? "" }
        set(email) { self.customer?.email = email }
    }
    
    var customerGender: String {
        get { return self.customer?.gender ?? "" }
        set(gender) { self.customer?.gender = gender }
    }
    
    var customerProducts: [ProductModel.Payload] {
        get { return self.product ?? [] }
    }
    
    
    //    func getCustomerId() -> String {
    //        return self.customer?.id ?? ""
    //    }
    //
    //    func getCustomerName() -> String {
    //        return self.customer?.name ?? ""
    //    }
    
    //    func getCustomerSurname() -> String {
    //        return self.customer?.surname ?? ""
    //    }
    
    //    func getCustomerPhoneNumber() -> String {
    //        return self.customer?.phoneNumber ?? ""
    //    }
    //
    //    func getCustomerBirthday() -> String {
    //        return self.customer?.birthday ?? ""
    //    }
    //
    //    func getCustomerEmail() -> String {
    //        return self.customer?.email ?? ""
    //    }
    //
    //    func getCustomerGender() -> String {
    //        return self.customer?.gender ?? ""
    //    }
    
    //    func setCustomerName(name: String) {
    //        self.customer?.name = name
    //    }
    
    //    func setCustomerSurname(surname: String) {
    //        self.customer?.surname = surname
    //    }
    
    //    func setCustomerPhoneNumber(phoneNumber: String) {
    //        self.customer?.phoneNumber = phoneNumber
    //    }
    //
    //    func setCustomerGender(gender: String) {
    //        self.customer?.gender = gender
    //    }
    //
    //    func setCustomerEmail(email: String) {
    //        self.customer?.email = email
    //    }
    //
    //    func setCustomerBirthday(birthday: String) {
    //        self.customer?.birthday = birthday
    //    }
    //
    //    func getProducts() -> [ProductModel.Payload] {
    //        return self.product ?? []
    //    }
    //
    //    func setProducts(product: [ProductModel.Payload]) {
    //        self.product = product
    //    }
}




