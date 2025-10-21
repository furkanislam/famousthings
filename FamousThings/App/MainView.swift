//
//  MainView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var languageManager: LanguageManager

    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text(languageManager.localized("browse"))
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text(languageManager.localized("locations"))
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text(languageManager.localized("gallery"))
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text(languageManager.localized("settings"))
                }
        } //: TABVIEW

    }
}

#Preview {
    MainView()
}
