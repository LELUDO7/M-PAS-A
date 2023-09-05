//
//  Recette.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-09-01.
//

import SwiftUI

struct RecipeView: View {
    @Binding var recipes: [Recipe]
    
    @State private var isPresentingNewRecipeView = false
    
    var body: some View {
        NavigationStack{
            List($recipes){ $recipe in
                NavigationLink(destination: RecipeDetailView(recipe: $recipe)){
                    RecipeCardView(recipe: recipe)
                }
            }
            .navigationBarTitle("Recipes", displayMode: .large)
            .toolbar {
                Button(action: {
                    isPresentingNewRecipeView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Recipe")
            }
        }
        .sheet(isPresented: $isPresentingNewRecipeView) {
            NewRecipeView(recipes: $recipes, isPresentingNewRecipeView: $isPresentingNewRecipeView)
            
        }
        
    }
}

struct Recette_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipes: .constant(Recipe.sampleData))
    }
}
