//
//  AnimalModel.swift
//  Africa
//
//  Created by FE-Minh Thong on 29/12/2022.
//

import SwiftUI

struct Animal : Identifiable, Codable {
    var id: String
    var name: String
    var headline: String
    var description: String
    var link: String
    var image: String
    var gallery: [String]
    var fact: [String]
}
