//
//  M_PAS_AApp.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-08-31.
//

import SwiftUI

@main
struct M_PAS_AApp: App {
    @StateObject private var store = RecipeStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(recipes: $store.recipes) {
                Task {
                    do {
                        try await store.save(recipes: store.recipes)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }.task {
                do {
                    try await store.load()
                } catch {
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
}
