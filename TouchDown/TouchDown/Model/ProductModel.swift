//
//  ProductView.swift
//  TouchDown
//
//  Created by Thong Doan on 02/01/2023.
//

import SwiftUI
struct Product: Codable, Identifiable {
    
    var id: Int
    var name: String
    var image: String
    var price: Int
    var description: String
    var color: [Double]
    
    var productColor: Color {
       return Color(red: color[0], green: color[1], blue: color[2])
    }
    var formattedPrice: String { return "$\(price)"}
    
}
