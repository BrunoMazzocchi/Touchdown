//
//  Shop.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 23/10/24.
//

import Foundation

class Shop: ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: ProductModel? = nil
}
