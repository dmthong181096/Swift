//
//  HeadingView.swift
//  Africa
//
//  Created by FE-Minh Thong on 29/12/2022.
//

import SwiftUI

struct HeadingView: View {
    var headingImage: String = "photo.on.rectangle.angled"
    var  headingText: String = "Wilderness in Pictures"
    var body: some View {
        HStack(alignment: .center, spacing: 15, content: {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
            Text(headingText)
        }).font(.title2)
            .fontWeight(.bold)
            .padding(.vertical,20)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView()
    }
}
