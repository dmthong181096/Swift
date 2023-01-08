//
//  Contants.swift
//  Devote
//
//  Created by FE-Minh Thong on 05/01/2023.
//

import SwiftUI



var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink,Color.blue]), startPoint: .leading, endPoint: .trailing)
}
//SOUND
var soundDing: String = "sound-ding"
var soundRise: String = "sound-rise"
var soundTap: String = "sound-tap"
//ring feedback
var feedback = UINotificationFeedbackGenerator()
