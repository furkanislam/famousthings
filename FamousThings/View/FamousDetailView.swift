//
//  FamousDetailView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct FamousDetailView: View {
    // MARK: - PROPERTIES
    let famous: Famous
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // HERO IMAGE
                Image(famous.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(famous.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                Text(famous.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Nature Pictures")
                    InsetGalleryView(famuos: famous)
                }
                .padding(.horizontal)
                
                // FACTS
                
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(famous: famous)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(famous.name)")
                    
                    Text(famous.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                
                Group {
                    HeadingView(headingImage: "map", headingText: "Türkiye Haritası")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWebLinkView(famous: famous)
                }
                .padding(.horizontal)
            } //: VSTACK
            .navigationTitle("Learn about \(famous.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: SCROLL
    }
}

#Preview {
    let famouss: [Famous] = Bundle.main.decode("famous.json")
    FamousDetailView(famous: famouss[0])
}
