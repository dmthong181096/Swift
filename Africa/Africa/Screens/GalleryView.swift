//
//  GalleryView.swift
//  Africa
//
//  Created by FE-Minh Thong on 28/12/2022.
//

import SwiftUI

struct GalleryView: View {
    @State private var gridLayout : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    let animals: [Animal] = Bundle.main.decode("animals.json")
    @State private var speed = 3.0
    @State private var isEditing = false
    @State private var selectedAnimal : String = "lion"
    @State private var gridColum: Double = 3.0
    
    func gridSwitch()  {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColum))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image( selectedAnimal)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())

                        .background {
                            Circle()
                                .stroke(Color.white,lineWidth: 10)
                                .scaledToFit()
                        }

                
               
                Slider(
                    value: $speed,
                    in: 2...4,
                    step: 1,
                    onEditingChanged: { editing in
                        isEditing = editing
                        gridColum = speed
                        gridSwitch()
                    }
                ).padding(40)
                Spacer()
                LazyVGrid(columns: gridLayout,alignment: .center, spacing: 10) {
                    ForEach(animals) { animal in
                        Button {
                            selectedAnimal = animal.image
                        } label: {
                            Image(animal.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                        }

                        
                        
                       
                    }
                }.padding(.horizontal,30)
                    .animation(.easeOut(duration: 0.5), value: gridColum)
                Spacer()
            }
        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(MotionAnimationView())    
       
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
