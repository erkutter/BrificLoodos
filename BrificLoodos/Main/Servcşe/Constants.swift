//
//  Constants.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 11.08.2023.
//

import Foundation

struct Constants {
    
    struct ProductionServer {
        static let baseURL = "https://api-dev.brific.com/api/v1/cdh"
    }
    
    struct APIParameterKey {
        static let name = "name"
        static let surname = "surname"
        static let gender = "gender"
        static let birthday = "birthday"
        static let email = "email"
        
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case bearer = "Bearer"
    case token = "eyJhbGciOiJIUzI1NiIsInR5cCI6ImF0K2p3dCJ9.eyJzdWIiOiI1MDQiLCJuYW1lIjoiOTA1MzExMDAxMDExIiwib2lfcHJzdCI6ImJyaWZpY19tb2JpbGVfYXBwIiwib2lfYXVfaWQiOiI4NWEzNTQ5Ny0zMzRjLTRiYmQtODVlZC1iZGYzMzMxN2JkM2EiLCJjbGllbnRfaWQiOiJicmlmaWNfbW9iaWxlX2FwcCIsIm9pX3Rrbl9pZCI6IjhiZTEwMmFlLTE0ODgtNDMwMS1iYmNlLWVjMDczMzQ4ZmE3ZiIsImF1ZCI6WyJvcGVuaWQiLCJvZmZsaW5lX2FjY2VzcyIsImVtYWlsIl0sInNjb3BlIjoib3BlbmlkIG9mZmxpbmVfYWNjZXNzIGVtYWlsIiwianRpIjoiZTUxMWQxNDItZDUyMi00OTVkLThlYTMtOWE1Y2MzMjM3ZmZiIiwiZXhwIjoxNjkyNzcyMTI4LCJpc3MiOiJodHRwczovL2F1dGgtZGV2LmJyaWZpYy5jb20vIiwiaWF0IjoxNjkwOTcyMTI4fQ.HT26DmIBckJnLAZNxp0GvnQ7INng6xA_gcURvpZGVZ0"
}

enum ContentType: String {
    case json = "application/json"
    case type = "Content-Type"
}
