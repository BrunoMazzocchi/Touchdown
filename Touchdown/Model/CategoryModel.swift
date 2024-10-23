//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 21/10/24.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
