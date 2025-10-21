//
//  String+Extensions.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 21.10.2025.
//

import Foundation

extension String {
    var localized: String {
        let languageCode = UserDefaults.standard.string(forKey: "appLanguage") ?? "tr"
        guard let path = Bundle.main.path(forResource: languageCode, ofType: "lproj"),
              let bundle = Bundle(path: path) else { return NSLocalizedString(self, comment: "") }
        return NSLocalizedString(self, bundle: bundle, comment: "")
    }
}
