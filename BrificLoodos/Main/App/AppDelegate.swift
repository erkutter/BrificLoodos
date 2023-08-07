//
//  AppDelegate.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 31.07.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    let accessToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6ImF0K2p3dCJ9.eyJzdWIiOiI1MDQiLCJuYW1lIjoiOTA1MzExMDAxMDExIiwib2lfcHJzdCI6ImJyaWZpY19tb2JpbGVfYXBwIiwib2lfYXVfaWQiOiI4NWEzNTQ5Ny0zMzRjLTRiYmQtODVlZC1iZGYzMzMxN2JkM2EiLCJjbGllbnRfaWQiOiJicmlmaWNfbW9iaWxlX2FwcCIsIm9pX3Rrbl9pZCI6IjhiZTEwMmFlLTE0ODgtNDMwMS1iYmNlLWVjMDczMzQ4ZmE3ZiIsImF1ZCI6WyJvcGVuaWQiLCJvZmZsaW5lX2FjY2VzcyIsImVtYWlsIl0sInNjb3BlIjoib3BlbmlkIG9mZmxpbmVfYWNjZXNzIGVtYWlsIiwianRpIjoiZTUxMWQxNDItZDUyMi00OTVkLThlYTMtOWE1Y2MzMjM3ZmZiIiwiZXhwIjoxNjkyNzcyMTI4LCJpc3MiOiJodHRwczovL2F1dGgtZGV2LmJyaWZpYy5jb20vIiwiaWF0IjoxNjkwOTcyMTI4fQ.HT26DmIBckJnLAZNxp0GvnQ7INng6xA_gcURvpZGVZ0"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

