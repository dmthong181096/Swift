//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Thong Doan on 01/01/2023.
//

import SwiftUI

struct CategoryItemView: View {
    var category: Category
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()

                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                Text (category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding()
            .background(
                Color.white.cornerRadius(12)
            )
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 2)
            )
            
            
        }

    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0]).previewLayout(.sizeThatFits).preferredColorScheme(.dark).padding()
    }
}
