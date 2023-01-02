//
//  ProductGridView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct ProductGridView: View {
    var body: some View {
  
                LazyVGrid(columns: gridLayout,spacing: columSpacing) {
                    ForEach(products) { product in
                        NavigationLink(destination: ProductDetailView(product: product), label: {
                            ProductItemView(product: product)
                        })
                        
                           
                        
                        
                    }
                }.padding(20)

    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
    }
}
