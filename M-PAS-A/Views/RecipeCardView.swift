//
//  RecipeCardView.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-09-01.
//

import SwiftUI

struct RecipeCardView: View {
    let recipe : Recipe
    var body: some View {
        VStack{
            Text(recipe.name)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: Recipe.sampleData[0])
    }
}
