//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
