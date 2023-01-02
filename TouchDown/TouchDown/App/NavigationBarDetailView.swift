//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.left")
            }
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "cart")
            }
        }.font(.title)
        
        .padding()
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView().previewLayout(.sizeThatFits)
    }
}
