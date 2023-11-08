//
//  APIRequest.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 11.08.2023.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
    
    case customer(name: String, surname: String, gender: String, birthday: String, email: String)
    case profile
    case product
    case deleteProd(id:String)
    
    private var method: HTTPMethod {
        switch self {
        case .customer:
            return .put
        case .profile:
            return .get
        case .product:
            return .get
        case .deleteProd:
            return .delete
        }
    }
    
    private var path: String {
        switch self {
        case .customer:
            return "/customer"
        case .profile:
            return "/customer/profile"
        case .product:
            return "/products"
        case .deleteProd(let id):
            return "/product/\(id)"
        }
    }
    
    private var parameters: Parameters? {
        switch self {
        case .customer(let name, let surname, let gender, let birthday, let email):
            return [
                Constants.APIParameterKey.name: name,
                Constants.APIParameterKey.surname: surname,
                Constants.APIParameterKey.gender: gender,
                Constants.APIParameterKey.birthday: birthday,
                Constants.APIParameterKey.email: email
            ]
        case .profile:
            return nil
        case .product:
            return nil
        case .deleteProd:
            return nil
        }
    }
    
    
    func asURLRequest() throws -> URLRequest {
        guard let url = try? Constants.ProductionServer.baseURL.asURL() else {
            throw AFError.invalidURL(url: Constants.ProductionServer.baseURL)
        }
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue("\(HTTPHeaderField.bearer.rawValue) \(HTTPHeaderField.token.rawValue)", forHTTPHeaderField: HTTPHeaderField.authentication.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: ContentType.type.rawValue)
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        return urlRequest
    }
}
