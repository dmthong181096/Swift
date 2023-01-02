//
//  ContentView.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
           
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
                
                }
                
                
            }.background(
                Color.gray.opacity(0.5).ignoresSafeArea()
            )
           
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
