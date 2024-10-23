//
//  Constants.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 21/10/24.
//

import SwiftUI

// Colors
let colorBackground: Color = Color(Color("ColorBackground"))
let colorGray: Color = Color(UIColor.systemGray4)

// Data

let players: [PlayerModel] = Bundle.main.decode("player.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")
let products: [ProductModel] = Bundle.main.decode("product.json")
let brands: [BrandModel] = Bundle.main.decode("brand.json")
let sampleProduct: ProductModel = products.first!

// Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
