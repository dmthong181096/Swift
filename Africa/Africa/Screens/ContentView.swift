//
//  ContentView.swift
//  Africa
//
//  Created by FE-Minh Thong on 28/12/2022.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView(content: {
            VStack {
                List{
                    CoverImageView()
                        .frame(width: .infinity,height: 290)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .scrollIndicators(.hidden)

                    ForEach(animals) { animal in
                        AnimalListItemView(animal: animal)
                        
                    }
                    CreditsView()
                        .modifier(CenterModifier())
                }.navigationTitle("Africa")
                    .navigationBarTitleDisplayMode(.large)
                    
                    
            
            }.padding(-20)

        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
