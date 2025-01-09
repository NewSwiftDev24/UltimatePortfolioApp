//
//  UltimatePortfolioAppApp.swift
//  UltimatePortfolioApp
//
//  Created by Mark Honomichl on 1/5/25.
//

import SwiftUI

@main
struct UltimatePortfolioAppApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
