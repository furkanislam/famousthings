//
//  LanguageManager.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 21.10.2025.
//

import SwiftUI
import Combine

class LanguageManager: ObservableObject {
    @Published var currentLanguage: String {
        didSet {
            // UserDefaults'a kaydet
            UserDefaults.standard.set(currentLanguage, forKey: "appLanguage")
        }
    }
    
    init() {
        self.currentLanguage = UserDefaults.standard.string(forKey: "appLanguage") ?? "en"
    }
    
    // Lokalizasyon helper
    func localized(_ key: String) -> String {
        guard let path = Bundle.main.path(forResource: currentLanguage, ofType: "lproj"),
              let bundle = Bundle(path: path) else { return NSLocalizedString(key, comment: "") }
        return NSLocalizedString(key, bundle: bundle, comment: "")
    }
}
