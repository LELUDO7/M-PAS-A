//
//  Recipe.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-09-01.
//

import Foundation

struct Recipe: Identifiable, Codable {
    let id: UUID
    var name: String
    var ingredients: [Ingredient]
    var timeMinDouble: Double {
        get {
            Double(timeMinInt)
        }
        set {
            timeMinInt = Int(newValue)
        }
    }
    var timeMinInt: Int
    var origin: Origin
    
    init(id: UUID = UUID(), name: String, ingredients: [Ingredient], timeMinInt: Int, origin: Origin) {
        self.id = id
        self.name = name
        self.ingredients = ingredients
        self.timeMinInt = timeMinInt
        self.origin = origin
    }
}

extension Recipe {
    
    struct Ingredient: Identifiable, Codable {
        let id: UUID
        var name: String
        var quantity: String
        
        init(id: UUID = UUID(), name: String, quantity: String) {
            self.id = id
            self.name = name
            self.quantity = quantity
        }
    }
    
    static var emptyRecipe : Recipe {
        Recipe(name: "", ingredients: [], timeMinInt: 0, origin: Origin(name: "Quebec"))
    }
    
    static let sampleData: [Recipe] =
    [
        Recipe(name: "Pomme", ingredients: [Ingredient(name: "Pomme", quantity: "1")], timeMinInt: 30, origin: Origin(name: "Quebec"))
    ]
}
