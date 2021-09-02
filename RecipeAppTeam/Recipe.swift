//
//  Recipe.swift
//  RecipeAppTeam
//
//  Created by PenguinRaja on 03.09.2021.
//

import Foundation

struct Recipe {
    let id: Int
    let title: String
    let image: Data?
    let readyInMinutes: Int?
    let instructions: [String]?
    let ingredients: [Ingredient]
    let foodCategory: FoodCategory
    let complexity: String
    let isComplete: Bool
}


struct Ingredient {
    let id: Int
    let originalName: String
    let amount: Float?
    let unit: Unit?
}

enum Unit: String {
    case kilogramm = "кг"
    case gramm = "г"
    case milligram = "мг"
    case teaspoon = "ч.л."
    case tablespoon = "ст.л."
    case milliliter = "мл"
    case liter = "л"
    case pinch = "щепотка"
    case `default` = "по вкусу"
}

enum FoodCategory: String {
    case first = "Первое"
    case second = "Второе"
    case desert = "Десерт"
    case garnish = "Гарнир"
    case snacks = "Закуска"
    case salads = "Салат"
    case sauces = "Соус"
    case beverages = "Напиток"
    case `default` = "Другое"
}

