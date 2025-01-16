//
//  RMService.swift
//  RickandMorty
//
//  Created by Igor Odaryuk on 15.01.2025.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        // Implementation goes here
    }
}
