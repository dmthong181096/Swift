//
//  BlankView.swift
//  Devote
//
//  Created by Thong Doan on 07/01/2023.
//

import SwiftUI

struct BlankView: View {
    var body: some View {
        ZStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            Color.black
        )
        .opacity(0.6)
        .ignoresSafeArea()
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}
