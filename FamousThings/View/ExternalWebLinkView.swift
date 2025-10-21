//
//  ExternalWebLinkView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - PROPERTIES
    
    let famous: Famous
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(famous.name, destination: (URL(string: famous.link) ??  URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: GROUPBOX
    }
}

#Preview {
    let famouss: [Famous] = Bundle.main.decode("famous.json")
    ExternalWebLinkView(famous: famouss[0])
}
