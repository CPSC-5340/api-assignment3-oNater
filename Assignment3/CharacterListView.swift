//
//  CharacterListView.swift
//  Assignment3
//
//  Created by user250623 on 3/30/24.
//

import SwiftUI

struct CharacterListView: View {
    @ObservedObject var viewModel = CharacterViewModel()
    
    var body: some View {
        List(viewModel.characters) { character in
            NavigationLink(destination: CharacterDetailView(character: character)) {
                HStack {
                    AsyncImage(url: URL(string: character.image))
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(character.name).font(.headline)
                        Text(character.species).font(.subheadline)
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchCharacters()
        }
        .navigationTitle("Rick and Morty Characters")
    }
}

