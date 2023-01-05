//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var product: Product = products[0]
    @State private var isAnimated: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            NavigationBarDetailView().padding(.top,40)
            Text("Protective Gear")
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.medium)
                .padding(.horizontal)
            Text(shop.selectedProduct?.name ?? product.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal)
            //PRICE
            HStack(alignment: .top, spacing: 10) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Price")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(shop.selectedProduct?.formattedPrice ?? product.formattedPrice)
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                    
                }.padding(.top,30)
                Spacer()
                Image(shop.selectedProduct?.image ?? product.image)
                    .resizable()
                    .scaledToFit()
            }.padding(.horizontal)
                .zIndex(1)
 
            .opacity(isAnimated ? 1 : 0.5)
            .offset(y: isAnimated ? 0 : -30)
            //DETAIL BOTTOM PART
            VStack(content: {
                RatingsSizeView()
                    .zIndex(2)
                    .padding(.horizontal)
                    .padding(.top,-20)
                    .padding(.bottom,10)
            //DESCRIPION
                ScrollView {
                    Text(shop.selectedProduct?.description ?? product.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                }
                //QUANTITY FAVORIES
                QuantityFavouritesDetailView()
                    .padding()
                AddToCartDetailView()
                    .padding(.horizontal)
                    .padding(.bottom,20)
                Spacer()
            })
            .background(
                Color.white
                    
                    .clipShape(CustomShape())
                    .padding(.top,-145)
                    .ignoresSafeArea()
                    
            )
            .zIndex(0)
           
            
            
            Spacer()
        }.ignoresSafeArea(.all, edges: .bottom)
        .background(
            shop.selectedProduct?.productColor ?? product.productColor
        ).onAppear {
            withAnimation(.easeOut(duration: 1)){
                isAnimated = true
            }
        }
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView().environmentObject(Shop())    }
}
