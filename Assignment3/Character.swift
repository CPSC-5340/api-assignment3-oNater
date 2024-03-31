//
//  Character.swift
//  Assignment3
//
//  Created by user250623 on 3/30/24.
//

import Foundation

struct CharacterResponse: Codable {
    let results: [Character]
}

struct Character: Identifiable, Codable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var image: String
}
