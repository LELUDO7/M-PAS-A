//
//  RecipeDetailView.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-09-01.
//

import SwiftUI

struct RecipeDetailView: View {
    @Binding var recipe: Recipe
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: .constant(Recipe.sampleData[0]))
    }
}
