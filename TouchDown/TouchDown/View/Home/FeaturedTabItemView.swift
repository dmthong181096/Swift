//
//  FeaturedTabItemView.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

struct FeaturedTabItemView: View {
    var player: Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
//            .shadow(radius: 12)
//            .frame(width: 400,height: 500)
//            .padding()
    }
}

struct FeaturedTabItemView_Previews: PreviewProvider {
    static var players : [Player] = Bundle.main.decode("player.json")
    static var previews: some View {
        FeaturedTabItemView(player: players[2]).previewLayout(.sizeThatFits)
            
    }
}
