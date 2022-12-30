//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by FE-Minh Thong on 30/12/2022.
//

import SwiftUI

struct ExternalWeblinkView: View {
    var animal: Animal
    var body: some View {
        GroupBox{
            HStack{
                Group{
                    Image(systemName: "globe")
                    Text("wikipedia")
                    
                }
                Spacer()
                Link(destination: URL(string: animal.link)!) {
                    Image(systemName: "arrow.up.forward.app")
                    Text(animal.name)
                }



            }
        }.padding(.horizontal, 20)
            .padding(.bottom,30)
       
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals[1]).previewLayout(.sizeThatFits)
    }
}
