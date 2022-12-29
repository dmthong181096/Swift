//
//  InsetGalleryView.swift
//  Africa
//
//  Created by FE-Minh Thong on 29/12/2022.
//

import SwiftUI

struct InsetGalleryView: View {
    var animal: Animal
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                ForEach(0..<animal.gallery.count) { i in
                    Image(animal.gallery[i]).resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding(.horizontal,20)
                }
            }
        }
       
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[1])
    }
}
