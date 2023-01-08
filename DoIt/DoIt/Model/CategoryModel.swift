//
//  CategoryModel.swift
//  DoIt
//
//  Created by Thong Doan on 08/01/2023.
//

import SwiftUI

struct Category: Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
}
