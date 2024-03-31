//
//  CharacterDetailView.swift
//  Assignment3
//
//  Created by user250623 on 3/30/24.
//

import SwiftUI

struct CharacterDetailView: View {
    var character: Character

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: character.image))
                .aspectRatio(contentMode: .fit)
            Text(character.name).font(.largeTitle)
            Text("Status: \(character.status)")
            Text("Species: \(character.species)")
            Spacer()
        }
    }
}
