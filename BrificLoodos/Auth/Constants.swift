//
//  Keychain.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 7.08.2023.
//

import Foundation

class Constants {
    func saveToken(){
        let TOKEN = "eyJhbGciOiJIUzI1NiIsInR5cCI6ImF0K2p3dCJ9.eyJzdWIiOiI1MDQiLCJuYW1lIjoiOTA1MzExMDAxMDExIiwib2lfcHJzdCI6ImJyaWZpY19tb2JpbGVfYXBwIiwib2lfYXVfaWQiOiI4NWEzNTQ5Ny0zMzRjLTRiYmQtODVlZC1iZGYzMzMxN2JkM2EiLCJjbGllbnRfaWQiOiJicmlmaWNfbW9iaWxlX2FwcCIsIm9pX3Rrbl9pZCI6IjhiZTEwMmFlLTE0ODgtNDMwMS1iYmNlLWVjMDczMzQ4ZmE3ZiIsImF1ZCI6WyJvcGVuaWQiLCJvZmZsaW5lX2FjY2VzcyIsImVtYWlsIl0sInNjb3BlIjoib3BlbmlkIG9mZmxpbmVfYWNjZXNzIGVtYWlsIiwianRpIjoiZTUxMWQxNDItZDUyMi00OTVkLThlYTMtOWE1Y2MzMjM3ZmZiIiwiZXhwIjoxNjkyNzcyMTI4LCJpc3MiOiJodHRwczovL2F1dGgtZGV2LmJyaWZpYy5jb20vIiwiaWF0IjoxNjkwOTcyMTI4fQ.HT26DmIBckJnLAZNxp0GvnQ7INng6xA_gcURvpZGVZ0"
        UserDefaults.standard.set(TOKEN, forKey: "token")
    }
}

