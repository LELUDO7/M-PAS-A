//
//  Ingredient.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-09-01.
//

import Foundation

struct Ingredient: Identifiable, Codable{
    let id: UUID
    var name: String
    var quantity: String
    
    init(id: UUID = UUID(), name: String, quantity: String) {
        self.id = id
        self.name = name
        self.quantity = quantity
    }
}
