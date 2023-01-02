//
//  TitleView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct TitleView: View {
    var title: String = "Helmets"
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            Spacer()
        }.padding(.top,10)
            .padding(.horizontal,20)
            .padding(.bottom,20)
        

    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView().previewLayout(.sizeThatFits )
    }
}
