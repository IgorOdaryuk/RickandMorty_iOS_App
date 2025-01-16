//
//  RMCharacterViewController.swift
//  RickandMorty
//
//  Created by Igor Odaryuk on 13.01.2025.
//

import UIKit

final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in }
    }
}
