//
//  FamousModel.swift
//  FamousThings
//
//  Created by Furkan İSLAM on 20.10.2025.
//

import SwiftUI

struct Famous: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
