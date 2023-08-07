//
//  UserService.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 4.08.2023.
//
import Foundation
import Alamofire

struct UserData: Codable {
    let payload: Payload
    
    struct Payload: Codable {
        let id: String
        let name: String
        let surname: String
        let phoneNumber: String
        let email: String
    }
}

class UserService {
    func fetchUserData(completion: @escaping (Result<UserData.Payload, Error>) -> Void) {
        Constants().saveToken()
        let URL = "https://api-dev.brific.com/api/v1/cdh/customer"
        if let savedToken = UserDefaults.standard.string(forKey: "token") {
            let headers: HTTPHeaders = ["Authorization": "Bearer \(savedToken)"]
            AF.request(URL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers, interceptor: nil)
                .responseData { resp in
                    switch resp.result {
                    case .success(let data):
                        do {
                            let decodedData = try JSONDecoder().decode(UserData.self, from: data)
                            completion(.success(decodedData.payload))
                        } catch {
                            print("\(error)")
                        }
                    case .failure(let error):
                        print("\(error.localizedDescription)")
                    }
                }
        } else {
            print("error")
        }
    }
}

