//
//  SectionView.swift
//  TouchDown
//
//  Created by Thong Doan on 01/01/2023.
//

import SwiftUI

struct SectionView: View {
    var labelText: String = "Categories"
    var direction : Int = 1
    var body: some View {
        VStack {
            Spacer()
            Text(labelText)
                .font(.footnote)
                .fontWeight(.bold)
                .rotationEffect(Angle(degrees: Double((-90) * direction)))
                .foregroundColor(.white)
            Spacer()
            
        }.background(
            Color.gray.cornerRadius(12)
        )
        .frame(width: 85)
            
        
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView().previewLayout(.sizeThatFits)
    }
}
