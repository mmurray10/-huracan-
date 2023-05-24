//
//  FruitModel.swift
//  Fructus
//
//  Created by Murray on 5/24/23.
//

import SwiftUI
// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headling: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
