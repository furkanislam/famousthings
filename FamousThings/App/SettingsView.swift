//
//  SettingsView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var languageManager: LanguageManager

    
    let facts = [
        "Türkiye, dünyada en çok fındık üreten ülkedir 🌰",
        "Rize denince akla çay gelir ☕️",
        "Gaziantep, UNESCO tarafından gastronomi şehri olarak seçilmiştir 🍰",
        "Kütahya porselenleri dünya çapında tanınır 🏺",
        "Kayseri pastırması meşhurdur 🥩",
        "Van kedisi farklı göz renkleriyle bilinir 🐈"
    ]
    
    var randomFact: String {
        facts.randomElement() ?? "Türkiye, kültürel çeşitliliğiyle benzersiz bir ülkedir 🇹🇷"
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "Famous Things", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Türkiye’nin her şehrinin kendine özgü lezzetlerini, ürünlerini ve kültürel değerlerini keşfedin!")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2 (Did You Know?)
                    GroupBox(
                        label: SettingsLabelView(labelText: "didYouKnow".localized, labelImage: "lightbulb")
                    ) {
                        Text(randomFact)
                            .font(.callout)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 4)
                    }
                    
                    // MARK: - SECTION (Language)
                    GroupBox(
                        label: SettingsLabelView(labelText: "settingsLanguage".localized, labelImage: "globe")
                    ) {
                        VStack(alignment: .leading, spacing: 12) {
                            
                            Picker("", selection: $languageManager.currentLanguage) {
                                Text("🇹🇷 Türkçe")
                                    .tag("tr")
                                    .font(.system(size: 16, weight: .semibold))
                                Text("🇬🇧 English")
                                    .tag("en")
                                    .font(.system(size: 16, weight: .semibold))
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .padding(8)
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 1)
                        }
                        .padding(.vertical, 4)
                    }
                    
                    // MARK: - SECTION 3 (About the Project)
                    GroupBox(
                        label: SettingsLabelView(labelText: "aboutProject".localized, labelImage: "sparkles")
                    ) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("aboutProjectDesc")
                                .font(.footnote)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Divider().padding(.vertical, 4)
                            
                            Text("aboutProjectCredit")
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                            
                            Link("GitHub", destination: URL(string: "https://github.com/furkanislam/FamousThings")!)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .padding(.top, 2)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    // MARK: - SECTION 4 (Application Info)
                    GroupBox(
                        label: SettingsLabelView(labelText: "settingsApplication".localized, labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "settingsDeveloper".localized, content: "Fi Technology")
                        SettingsRowView(name: "settingsDesigner".localized, content: "Furkan İSLAM")
                        SettingsRowView(name: "settingsWebsite".localized, linkLabel: "Fi Harita Mühendislik", linkDestination: "fiharitamuhendislik.com")
                        SettingsRowView(name: "settingsLinkedIn".localized, linkLabel: "furkanislam", linkDestination: "linkedin.com/in/furkanislam/")
                        SettingsRowView(name: "settingsVersion".localized, content: "1.0.0")
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Settings")
                            .font(.title.bold())
                            .foregroundStyle(.primary)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    SettingsView()
}
