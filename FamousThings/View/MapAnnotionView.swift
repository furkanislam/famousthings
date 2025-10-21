//
//  MapAnnotionView.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct MapAnnotionView: View {
    // MARK: - PROPERTIES
    
    var location: Location
    @State private var animation: Double = 0.0
    @State private var showName: Bool = false
    
    // MARK: - BODY
    var body: some View {

        ZStack {
            
            if showName {
                VStack(spacing: 0) {
                    Text(location.name)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(
                            Color.accentColor.cornerRadius(8)
                        )
                        .offset(y: -70)
                        .transition(.scale.combined(with: .opacity))
                }
            }
            
            ZStack {
                Circle()
                    .fill(Color.accentColor)
                    .frame(width: 54, height: 54, alignment: .center)
                
                Circle()
                    .stroke(Color.accentColor, lineWidth: 2)
                    .frame(width: 52, height: 52, alignment: .center)
                    .scaleEffect(1 + CGFloat(animation))
                    .opacity(1 - animation)
                
                Image(location.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                    .clipShape(Circle())
            } 
            .onTapGesture {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                    showName.toggle()
                }
            }
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

#Preview {
    let locations: [Location] = Bundle.main.decode("locations.json")
    MapAnnotionView(location: locations[0])
}
