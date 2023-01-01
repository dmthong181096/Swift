//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedTabItemView(player: player)

                    .padding(.horizontal,5)
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .padding()
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView().background(Color.gray)
    }
}
