//
//  Shop.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 03/01/2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
