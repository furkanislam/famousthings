//
//  FamousThingsApp.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 18.10.2025.
//

import SwiftUI

@main
struct FamousThingsApp: App {
    
    @StateObject private var languageManager = LanguageManager()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(languageManager) // Tüm app için erişilebilir
        }
    }
}
