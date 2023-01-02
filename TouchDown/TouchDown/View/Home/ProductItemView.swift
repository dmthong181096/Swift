//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct ProductItemView: View {
    var product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
//                    .frame(height: 120)
            }.background(
                product.productColor     
            ).cornerRadius(12)
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[1]).previewLayout(.sizeThatFits)
    }
}
