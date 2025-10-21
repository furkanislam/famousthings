//
//  FamousGridItemView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct FamousGridItemView: View {
    // MARK: - PROPERTIES
    
    let famous: Famous
    
    // MARK: - BODY
    var body: some View {
        Image(famous.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    let famouss: [Famous] = Bundle.main.decode("famous.json")
    FamousGridItemView(famous: famouss[0])
}
