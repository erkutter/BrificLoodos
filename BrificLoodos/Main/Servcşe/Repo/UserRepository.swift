//
//  File.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 15.08.2023.
//

import Foundation

class UserRepository {
    
    func getCustomerInfo(completion: @escaping (Result<CustomerModel.Payload,Error>) -> Void) {
        APIClient.getCustomerData() { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let userData):
                    completion(.success(userData))
                case .failure(let error):
                    print("Error fetching user data: \(error.localizedDescription)")
                }
            }
        }
    }
    
    func getCustomerProduct(completion: @escaping (Result<[ProductModel.Payload],Error>) -> Void) {
        APIClient.getCustomerProduct() { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let userProduct):
                    completion(.success(userProduct))
                case .failure(let error):
                    print("Error fetching user data: \(error.localizedDescription)")
                }
            }
        }
    }
    
    
    /*func saveCustomerInfo() {
     setUserInfo()
     
     APIClient.updateCustomerData(name: self.user.getCustomerName(), surname: self.user.getCustomerSurname(), gender: self.user.getCustomerGender(), birthday: self.user.getCustomerBirthday(), email: self.user.getCustomerEmail()) { [weak self] success, errorMessage in
     DispatchQueue.main.async {
     if success {
     self?.showAlertWithMessage("User information updated")
     } else {
     print(errorMessage ?? "")
     }
     self?.fillCustomerInfo()
     }
     }
     }*/
}
