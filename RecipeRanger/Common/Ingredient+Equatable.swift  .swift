//
//  Ingredient+Equatable.swift  .swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 8/6/2023.
//

import Foundation

extension Ingredient: Equatable {
    static func == (lhs: Ingredient, rhs: Ingredient) -> Bool {
        return lhs.id == rhs.id && lhs.ingredient == rhs.ingredient
    }
}
