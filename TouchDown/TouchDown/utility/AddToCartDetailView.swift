//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                Spacer()
        }.padding()
        .background(
            products[0].productColor
        ).clipShape(Capsule())

        
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView().previewLayout(.sizeThatFits)
    }
}
