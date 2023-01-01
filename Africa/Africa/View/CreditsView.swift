//
//  CreditsView.swift
//  Africa
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: .center)
            
            Text("""
                Coppyright @Thong Doan
                All Right reserved
                Better app Less Code
                """)
            .font(.footnote)
            .multilineTextAlignment(.center)
            
        }.padding()
            .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
