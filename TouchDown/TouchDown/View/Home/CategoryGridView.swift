//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Thong Doan on 01/01/2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                
                LazyHGrid(rows: gridLayout, alignment: .center, spacing: columSpacing, pinnedViews: []) {
                    Section(header: SectionView(),
                            footer: SectionView(direction: -1)) {
                        ForEach(categories){ category in
                            CategoryItemView(category: category)
                        }
                    }
                }.frame(height: 140)
                    .padding()

                
            }
            
        }
      
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
    }
}
