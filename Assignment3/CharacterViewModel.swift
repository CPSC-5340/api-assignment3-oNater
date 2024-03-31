//
//  CharacterViewModel.swift
//  Assignment3
//
//  Created by user250623 on 3/30/24.
//
import Foundation

class CharacterViewModel: ObservableObject {
    @Published var characters = [Character]()

    func fetchCharacters() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }

        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else { return }

            let decoder = JSONDecoder()
            if let characterResponse = try? decoder.decode(CharacterResponse.self, from: data) {
                DispatchQueue.main.async {
                    self?.characters = characterResponse.results
                }
            }
        }.resume()
    }
}
