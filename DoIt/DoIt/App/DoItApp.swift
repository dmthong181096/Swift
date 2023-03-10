//
//  DoItApp.swift
//  DoIt
//
//  Created by Thong Doan on 08/01/2023.
//

import SwiftUI

@main
struct DoItApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
