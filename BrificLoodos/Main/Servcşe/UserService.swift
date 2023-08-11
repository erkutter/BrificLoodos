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
        let gender: String
        let email: String
        let birthday: String
    }
}

class UserService {
    func fetchUserData(completion: @escaping (Result<UserData.Payload, Error>) -> Void) {
        let savedToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6ImF0K2p3dCJ9.eyJzdWIiOiI1MDQiLCJuYW1lIjoiOTA1MzExMDAxMDExIiwib2lfcHJzdCI6ImJyaWZpY19tb2JpbGVfYXBwIiwib2lfYXVfaWQiOiI4NWEzNTQ5Ny0zMzRjLTRiYmQtODVlZC1iZGYzMzMxN2JkM2EiLCJjbGllbnRfaWQiOiJicmlmaWNfbW9iaWxlX2FwcCIsIm9pX3Rrbl9pZCI6IjhiZTEwMmFlLTE0ODgtNDMwMS1iYmNlLWVjMDczMzQ4ZmE3ZiIsImF1ZCI6WyJvcGVuaWQiLCJvZmZsaW5lX2FjY2VzcyIsImVtYWlsIl0sInNjb3BlIjoib3BlbmlkIG9mZmxpbmVfYWNjZXNzIGVtYWlsIiwianRpIjoiZTUxMWQxNDItZDUyMi00OTVkLThlYTMtOWE1Y2MzMjM3ZmZiIiwiZXhwIjoxNjkyNzcyMTI4LCJpc3MiOiJodHRwczovL2F1dGgtZGV2LmJyaWZpYy5jb20vIiwiaWF0IjoxNjkwOTcyMTI4fQ.HT26DmIBckJnLAZNxp0GvnQ7INng6xA_gcURvpZGVZ0"
        let URL = "https://api-dev.brific.com/api/v1/cdh/customer/profile"
            let headers: HTTPHeaders = ["Authorization": "Bearer \(savedToken)"]
            AF.request(URL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers, interceptor: nil)
                .responseData { resp in
                    switch resp.result {
                    case .success(let data):
                        do {
                            let decodedData = try JSONDecoder().decode(UserData.self, from: data)
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
    
    func updateUserData(name:String, surname:String, gender: String, birthday: String, email: String,completion: @escaping (Bool, String?) -> Void){
let savedToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6ImF0K2p3dCJ9.eyJzdWIiOiI1MDQiLCJuYW1lIjoiOTA1MzExMDAxMDExIiwib2lfcHJzdCI6ImJyaWZpY19tb2JpbGVfYXBwIiwib2lfYXVfaWQiOiI4NWEzNTQ5Ny0zMzRjLTRiYmQtODVlZC1iZGYzMzMxN2JkM2EiLCJjbGllbnRfaWQiOiJicmlmaWNfbW9iaWxlX2FwcCIsIm9pX3Rrbl9pZCI6IjhiZTEwMmFlLTE0ODgtNDMwMS1iYmNlLWVjMDczMzQ4ZmE3ZiIsImF1ZCI6WyJvcGVuaWQiLCJvZmZsaW5lX2FjY2VzcyIsImVtYWlsIl0sInNjb3BlIjoib3BlbmlkIG9mZmxpbmVfYWNjZXNzIGVtYWlsIiwianRpIjoiZTUxMWQxNDItZDUyMi00OTVkLThlYTMtOWE1Y2MzMjM3ZmZiIiwiZXhwIjoxNjkyNzcyMTI4LCJpc3MiOiJodHRwczovL2F1dGgtZGV2LmJyaWZpYy5jb20vIiwiaWF0IjoxNjkwOTcyMTI4fQ.HT26DmIBckJnLAZNxp0GvnQ7INng6xA_gcURvpZGVZ0"
        let params: Parameters = [
            "name": name,
            "surname": surname,
            "gender": gender,
            "birthday": birthday,
            "email": email
        ]
        let URL = "https://api-dev.brific.com/api/v1/cdh/customer"
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

