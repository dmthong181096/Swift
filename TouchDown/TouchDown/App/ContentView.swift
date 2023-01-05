//
//  ContentView.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        
        ZStack {
           
            if (shop.showingProduct == false && shop.selectedProduct == nil) {
                VStack {
                    NavigationBarView()
                        .shadow(radius: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack( spacing: 0) {
                            FeaturedTabView()
                                .frame(height: 280)
                            Spacer()
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            ProductGridView()
                            TitleView(title: "Brand")
                            BrandGridView()
                                
                            FooterView().padding()
                        }
//                        .onTapGesture {
//                            withAnimation(.easeOut){
////                                shop.selectedProduct = showingProduct
//                                shop.showingProduct = true
//                            }
//                        }
                    
                    }
                    
                    
                }.background(
                    Color.gray.opacity(0.5).ignoresSafeArea()
                )
            } else {
                withAnimation(.easeOut){
                    ProductDetailView()
                }
               
            }
           
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Shop())
    }
}
