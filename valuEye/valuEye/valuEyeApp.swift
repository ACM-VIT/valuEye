//
//  valuEyeApp.swift
//  valuEye
//
//  Created by Rutwij Patil on 03/10/22.
//

import SwiftUI

@main
struct valuEyeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
