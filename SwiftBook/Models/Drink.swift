//
//  Drink.swift
//  SwiftBook
//
//  Created by igor s on 09.08.2022.
//

import Foundation

struct Drink: Decodable {
    let drinks: [Recipe]
    
    var description: String {
        var result = ""
        for drink in drinks {
            result += "\n" + drink.description + "\n"
        }
        return result
    }
}

struct Recipe: Decodable {
    let strDrink: String
    let strCategory: String
    let strGlass: String
    let strInstructions: String
    let strDrinkThumb: String
    let strIngredient1: String
    let strIngredient2: String
    let strIngredient3: String
    let strIngredient4: String?
    
    var description: String {
        var info =
        """
        Title: \(strDrink)
        Category: \(strCategory)
        Glass Type: \(strGlass)
        Recipe: \(strInstructions)
        Image: \(strDrinkThumb)
        Ingredients: \(strIngredient1), \(strIngredient2), \(strIngredient3)
        """
        
        if let ingredient4 = strIngredient4 {
            info += ", " + ingredient4
        }
        return info
    }
}
