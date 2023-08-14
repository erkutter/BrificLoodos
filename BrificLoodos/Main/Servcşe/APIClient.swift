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
    
    static func getCustomerData(completion: @escaping (Result<CustomerModel.Payload, Error>) -> Void) {
        AF.request(APIRouter.profile).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let decodedData = try JSONDecoder().decode(CustomerModel.self, from: data)
                    print(decodedData)
                    completion(.success(decodedData.payload))
                } catch {
                    print("\(error)")
                }
            case .failure(let error):
                print("\(error.localizedDescription)")
            }
        }
    }
    
    static func getCustomerProduct(completion: @escaping (Result<[ProductModel.Payload], Error>) -> Void) {
        AF.request(APIRouter.product).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let decodedData = try JSONDecoder().decode(ProductModel.self, from: data)
                    print(decodedData)
                    completion(.success(decodedData.payload))
                } catch {
                    print("\(error)")
                }
            case .failure(let error):
                print("\(error.localizedDescription)")
            }
        }
    }
    
    static func deleteCustomerProduct(id:String, completion: @escaping (Bool, String?) -> Void) {
        AF.request(APIRouter.deleteProd(id: id)).responseData { response in
                switch response.result {
                case .success:
                    completion(true, nil)
                case .failure(let error):
                    completion(false, error.localizedDescription)
                }
            }
        }
}
