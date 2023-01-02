//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct BrandItemView: View {
    var brand: Brand
    var body: some View {
        ZStack {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
                .background(Color.white.cornerRadius(12))
                .background(
                    
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 2)
                )
                
 
        }
           
           
          
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0   ]).previewLayout(.sizeThatFits).background(Color.gray)
    }
}
