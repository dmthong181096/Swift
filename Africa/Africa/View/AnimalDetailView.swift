//
//  AnimalDetailView.swift
//  Africa
//
//  Created by FE-Minh Thong on 29/12/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    var animal: Animal
    var body: some View {
        ScrollView( showsIndicators: false, content:  {
            VStack(content: {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                Text(animal.name.uppercased())
                    .underline(pattern: .solid,color: .accentColor)
                    .padding(25)
                    .font(.system(size: 55))
                    .fontWeight(.heavy)
                Text(animal.headline)
                    .font(.title2)
                    .padding(.top,5)
//                    .padding(.bottom,30)
                    .padding(.horizontal,20)
                    .foregroundColor(.accentColor)
                
                Spacer()
                HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                InsetGalleryView(animal: animal)
                    .frame(height: 250)
                HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                InsetFactView(animal: animal)
                    
            }).navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)

        })
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView(content: {
            AnimalDetailView(animal: animals[1])
        })
        
    }
}
