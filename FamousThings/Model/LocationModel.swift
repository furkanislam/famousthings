//
//  LocationModel.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI
import MapKit

struct Location: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
