//
//  CategoryItemGirdView.swift
//  DoIt
//
//  Created by Thong Doan on 08/01/2023.
//

import SwiftUI

struct CategoryItemGirdView: View {
    var category: Category
    @State private var pressed:Bool = false
    var body: some View {
        HStack(spacing: 0) {
            
            
            Image(category.image)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
           Spacer()
            Text(category.name)

            Spacer()
        }
//        .onTapGesture {
//            withAnimation(.easeOut(duration: 1)){
//                pressed = true
//                print("CLick")
//            }
//            
//        }.opacity(pressed ? 0.1 : 1)
           
            .font(.footnote)


//            .onTapGesture {
//                print("click \(category.name)")
//            }
    }
}

struct CategoryItemGirdView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemGirdView(category: categories[0]).previewLayout(.sizeThatFits)
    }
}
