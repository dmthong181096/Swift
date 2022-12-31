//
//  GalleryView.swift
//  Africa
//
//  Created by FE-Minh Thong on 28/12/2022.
//

import SwiftUI

struct GalleryView: View {
    let gridLayout : [GridItem] = [
        GridItem(),
        GridItem(),
        GridItem()
    ]
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            
            
            
            VStack {
                ZStack {
                    Image(animals[2].image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
//                        .frame(width: 500   ,height: 500)
                        .background {
                            Circle()
                                .stroke(Color.white,lineWidth: 10)
                                .scaledToFit()
//                                .frame(width: 315,height: 315)
                                
                        }
                        .scaleEffect(0.8)

                }
                
                
                
                LazyVGrid(columns: gridLayout,alignment: .center, spacing: 10) {
                    ForEach(animals) { animal in
                        
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                    }
                }.padding(.horizontal,30)
                Spacer()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(MotionAnimationView())    
       
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
