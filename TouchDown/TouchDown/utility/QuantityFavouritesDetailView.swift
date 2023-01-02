//
//  QuantityFavouritesDetailView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct QuantityFavouritesDetailView: View {
    @State private var counter: Int = 1
    var body: some View {
        HStack {
            Button {
                counter -= 1
            } label: {
                Image(systemName: "minus.circle")
            }.disabled(counter == 0 ? true : false)
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(width: 36)
            
            Button {
                counter += 1
            } label: {
                Image(systemName: "plus.circle")
                   
            }
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        }
        .font(.title)
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouritesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouritesDetailView().previewLayout(.sizeThatFits)
    }
}
