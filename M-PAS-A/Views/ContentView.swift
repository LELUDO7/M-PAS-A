//
//  ContentView.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-08-31.
//

import SwiftUI

struct ContentView: View {
    @Binding var recipes: [Recipe]
    @Environment(\.scenePhase) private var scenePhase
    let saveAction: ()->Void
    var body: some View {
        TabView{
            PickView().tabItem{
                Image(systemName: "checkmark.circle")
                Text("Pick")
            }
            RecipeView(recipes: $recipes).tabItem{
                Image(systemName: "list.bullet.clipboard")
                Text("Recipe")
            }
            
        }
        .onChange(of: scenePhase) { phase in
            if phase == .inactive { saveAction() }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipes: .constant(Recipe.sampleData), saveAction: {})
    }
}
