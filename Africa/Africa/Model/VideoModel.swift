//
//  VideoModel.swift
//  Africa
//
//  Created by FE-Minh Thong on 30/12/2022.
//

import SwiftUI

struct Video: Codable, Identifiable {
    var id: String
    var name: String
    var headline: String
    
    
    //computed
    var thumbnail: String{
        "video-\(id)"
    }

}
