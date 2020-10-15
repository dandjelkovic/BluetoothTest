//
//  BluetoothTestApp.swift
//  BluetoothTest
//
//  Created by Dalibor Andjelkovic on 22.09.20.
//

import SwiftUI

@main
struct BluetoothTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
