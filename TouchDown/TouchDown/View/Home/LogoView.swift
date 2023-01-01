//
//  LogoView.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text("TOUCH")
            Image(logoDark)
//                .scaleEffect(1.5)
                .resizable()
                .scaledToFit()
                .frame(height: 40)
            Text("DOWN")
        }.font(.title2)
            .fontWeight(.heavy)

    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView().previewLayout(.sizeThatFits)
    }
}
