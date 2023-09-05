//
//  Origins.swift
//  M-PAS-A
//
//  Created by Ludovic Fournier on 2023-09-02.
//

import Foundation

struct Origin : Identifiable, Codable, Hashable{
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

extension Origin {
    
    static var Origins : [Origin] = [Origin(name: "Asia"), Origin(name: "Italia"), Origin(name: "Quebec"), Origin(name: "USA")]
}
