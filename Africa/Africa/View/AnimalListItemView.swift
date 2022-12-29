//
//  AnimalListItemView.swift
//  Africa
//
//  Created by FE-Minh Thong on 29/12/2022.
//

import SwiftUI

struct AnimalListItemView: View {
    var animal: Animal
    var body: some View {
        NavigationLink(destination: AnimalDetailView() , label: {
            HStack (spacing: 10){
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100,height: 100)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
                    
                VStack(alignment: .leading, spacing: 10) {
                    Text(animal.name)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                    Text( animal.headline)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
                Spacer()
            }
        })
       
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1]).previewLayout(.sizeThatFits)
    }
}
