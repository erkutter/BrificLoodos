//
//  APIClient.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 11.08.2023.
//

import Foundation
import Alamofire

class APIClient {
    static func updateCustomerData(name:String, surname:String, gender: String, birthday: String, email: String,completion: @escaping (Bool, String?) -> Void) {
        AF.request( APIRouter.customer(name: name, surname: surname, gender: gender, birthday: birthday, email: email)).responseDecodable { (response: DataResponse<CustomerModel,AFError>) in
            switch response.result {
            case .success(let data):
                print(data)
                completion(true,nil)
            case .failure(let error):
                completion(false,error.localizedDescription)
                
            }
        }
        
    }
    
}
