//
//  RMRequest.swift
//  RickandMorty
//
//  Created by Igor Odaryuk on 15.01.2025.
//

import Foundation

final class RMRequest {
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }

    private let endpoint: RMEndpoint
    private let pathComponents: Set<String>
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue

        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }

        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap {
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            string += argumentString
        }

        return string
    }

    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"

    // MARK: - Public

    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
