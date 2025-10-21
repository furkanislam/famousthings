//
//  SettingsLabelView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 21.10.2025.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        } //: HSTACK
    }
}

#Preview {
    SettingsLabelView(labelText: "Famous Things", labelImage: "info.circle")
}
