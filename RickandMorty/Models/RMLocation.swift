//
//  RMLocation.swift
//  RickandMorty
//
//  Created by Igor Odaryuk on 15.01.2025.
//


import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}

