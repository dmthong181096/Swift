//
//  RatingsSizeView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI

struct RatingsSizeView: View {
    var sizes: [String] = ["XS","S","M","L","XL"]
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("Settings")
                    .font(.footnote)
                    .foregroundColor(.gray)
                HStack(alignment: .center, spacing: 3) {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.gray.cornerRadius(5))
                                .foregroundColor(.white)
                        }

                       
                            
                    }
                }
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .foregroundColor(.gray)
                HStack(alignment: .center, spacing: 5) {
                    ForEach(0..<sizes.count) { index in
                        Button {
                            
                        } label: {
                            Text(sizes[index])
                                 .foregroundColor(.gray)
                                 .frame(width: 28,height: 28,alignment: .center)
                                 .background(Color.white.cornerRadius(5))
                                 .background(
                                     RoundedRectangle(cornerRadius: 5)
                                         .stroke(Color.gray, lineWidth: 2)
                                 )
                        }

                        
                     
                    }
                }
            }
        }
    }
}

struct RatingsSizeView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizeView().previewLayout(.sizeThatFits)
    }
}
