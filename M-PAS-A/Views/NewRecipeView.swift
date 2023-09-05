//
//  NewRecipeView.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-09-01.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var newRecipe = Recipe.emptyRecipe
    
    @Binding var recipes: [Recipe]
    @Binding var isPresentingNewRecipeView: Bool
    var body: some View {
        NavigationStack{
            RecipeEditView(recipe: $newRecipe )
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView(recipes: .constant(Recipe.sampleData), isPresentingNewRecipeView: .constant(true))
    }
}
