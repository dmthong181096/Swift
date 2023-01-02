//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout) {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                }
            }.padding()
                .frame(height: 200)
        }
        
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView().background(Color.gray)
    }
}
