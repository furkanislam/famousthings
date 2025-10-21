//
//  InsetFactView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    
    let famous: Famous
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(famous.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABVIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: GROP
    }
}

#Preview {
    let famouss: [Famous] = Bundle.main.decode("famous.json")
    InsetFactView(famous: famouss[0])
}
