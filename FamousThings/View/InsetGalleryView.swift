//
//  InsetGalleryView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    
    let famuos: Famous
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(famuos.gallery, id: \.self) { item in
                Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            } //: HSTACK
        } //: SCROLL
    }
}

#Preview {
    let famouss: [Famous] = Bundle.main.decode("famous.json")
    InsetGalleryView(famuos: famouss[0])
}
