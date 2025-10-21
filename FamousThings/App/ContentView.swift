//
//  ContentView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 18.10.2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    let famouss: [Famous] = Bundle.main.decode("famous.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            Group {
                List {
                    CoverImageView()
                        .frame(height: 280)
                        .listRowInsets(EdgeInsets(top:0, leading: 0, bottom: 0, trailing: 0))
                    
                    ForEach(famouss) { famous in
                        NavigationLink(destination: FamousDetailView(famous: famous)) {
                            FamousListItemView(famous: famous)
                        } //: LINK
                    } //: LOOP
                } //: LIST
            } //: GROUP
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Türkiye")
                        .font(.title)
                        .foregroundStyle(.primary)
                } //: TOOLBARITEM
            } //: TOOLBAR
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}
