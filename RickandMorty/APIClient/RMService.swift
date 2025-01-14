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
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
