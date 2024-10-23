//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 22/10/24.
//

import SwiftUI

struct BrandItemView: View {
    let brand: BrandModel
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

#Preview {
    BrandItemView(brand: brands.first!)
}
