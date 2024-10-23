//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 21/10/24.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Properties
    let player: PlayerModel
    var body: some View {
        // MARK: - Main body
        
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        
    }
}

#Preview {
    FeaturedItemView(player: players.first!)
}
