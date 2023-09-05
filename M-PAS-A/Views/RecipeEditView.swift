//
//  RecipeEditView.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-09-02.
//

import SwiftUI

struct RecipeEditView: View {
    @Binding var recipe: Recipe
    @State private var newIngredient = Ingredient(name: "", quantity: "")
    
    var body: some View {
        Form {
            Section(header: Text("RECIPE INFO")) {
                TextField("Name", text: $recipe.name)
                Picker("Origin", selection: $recipe.origin){
                    ForEach(Origin.Origins, id: \.self){
                        Text($0.name)
                    }
                }
                .pickerStyle(.menu)
                HStack{
                    Slider(value:$recipe.timeMinDouble, in:5...200, step: 5){
                        Text("")
                    }
                    .accessibilityValue("\(recipe.timeMinInt) minutes")
                    Spacer()
                    Text("\(recipe.timeMinInt) minutes")
                        .accessibilityHidden(true)
                }
            }
            Section(header: Text("INGREDIENT")){
                ForEach(recipe.ingredients) { ingredient in
                    Text(ingredient.name)
                }
                .onDelete{ indices in
                    recipe.ingredients.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Ingredient", text: $newIngredient.name)
                    TextField("Quantity", text: $newIngredient.quantity)
                    Button(action: {
                        withAnimation{
                            let ingredient = Recipe.Ingredient(name: newIngredient.name, quantity: newIngredient.quantity)
                            recipe.ingredients.append(ingredient)
                            newIngredient = Ingredient(name: "", quantity: "")
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newIngredient.name.isEmpty || newIngredient.quantity.isEmpty)
                }
            }
        }
    }
}

struct RecipeEditView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeEditView(recipe: .constant(Recipe.sampleData[0]))
    }
}
