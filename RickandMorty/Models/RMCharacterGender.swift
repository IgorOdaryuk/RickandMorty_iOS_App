//
//  RMCharacterGender.swift
//  RickandMorty
//
//  Created by Igor Odaryuk on 16.01.2025.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // 'Female', 'Male', 'Genderless' or 'unknown'
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
}
