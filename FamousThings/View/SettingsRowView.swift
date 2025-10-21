//
//  SettingsRowView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 21.10.2025.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundStyle(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil)
                {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.pink)
                }
                else {
                    EmptyView()
                }
            }
        } //: VSTACK
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Furkan İSLAM")
}
