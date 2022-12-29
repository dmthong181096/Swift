//
//  InsetFactView.swift
//  Africa
//
//  Created by FE-Minh Thong on 29/12/2022.
//

import SwiftUI

struct InsetFactView: View {
    var animal: Animal
    var body: some View {
                    GroupBox {
                       
                            TabView{
                                ForEach(0 ..< animal.fact.count) { index in
                                Text(animal.fact[index])
                                }
                            }.tabViewStyle(PageTabViewStyle())
                       
        
                    }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5)
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[1])
    }
}
