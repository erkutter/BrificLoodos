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
    
    func updateUserData(name:String, surname:String, email: String,completion: @escaping (Bool, String?) -> Void){
        Constants().saveToken()
        let params: Parameters = [
            "name": name,
            "surname": surname,
            "email": email
        ]
        let URL = "https://api-dev.brific.com/api/v1/cdh/customer"
        if let savedToken = UserDefaults.standard.string(forKey: "token") {
            let headers: HTTPHeaders = ["Authorization": "Bearer \(savedToken)"]
            AF.request(URL,method: .put, parameters: params, encoding: JSONEncoding.default,headers: headers).responseData() { response in
                switch response.result {
                case .success(let data):
                    do {
                        guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                            print("Error converting data to JSON object")
                            return
                        }
                        guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                            print("Error converting JSON object to Pretty JSON data")
                            return
                        }
                        guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                            print("Error converting JSON data in String")
                            return
                        }
                        print(prettyPrintedJson)
                    } catch {
                        print("Error: Trying to convert JSON data to string")
                        return
                    }
                    completion(true,nil)
                case .failure(let error):
                    print(error)
                    completion(false, "API request failed")
                }
            }
        }
        
    }
}


