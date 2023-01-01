//
//  FooterView.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("""
                We offer the most cutting edge
                comfortable lightweight and durable
                football helmets in the market at
                affordable prices
                """)
            .layoutPriority(2)
            Image(logoLineal)
                .renderingMode(.template)
                .layoutPriority(0)
            Text("""
                 Copyright @ Thong Doan
                 All right reserved
                 """)
            .font(.footnote)
            .fontWeight(.bold)
            .layoutPriority(1)

            
        }
      
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView().previewLayout(.sizeThatFits)
    }
}
