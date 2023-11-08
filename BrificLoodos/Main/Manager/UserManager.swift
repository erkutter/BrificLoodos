//
//  UserManager.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 15.08.2023.
//

import Foundation

class UserManager {
    static let shared = UserManager()
    var customerData: CustomerModel.Payload?
    var customerProduct: [ProductModel.Payload]?
    let userRepository = UserRepository()
    var user: User?
    
    func initializeCustomerData(completion: @escaping (Bool) -> Void) {
        userRepository.getCustomerInfo() { result in
            switch result {
            case .success(let userData):
                self.customerData = userData
                self.user = User(customer: self.customerData, product: self.customerProduct)
                completion(true)
            case .failure:
                completion(false)
            }
        }
    }
    
    func initializeCustomerProducts(completion: @escaping (Bool) -> Void){
        userRepository.getCustomerProduct() { result in
            switch result {
            case .success(let product):
                self.customerProduct = product
                if let customerData = self.customerData {
                    self.user = User(customer: customerData, product: self.customerProduct)
                    completion(true)
                }
            case .failure:
                completion(false)
            }
        }
    }
}
