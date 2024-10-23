//
//  ProductView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 22/10/24.
//

import SwiftUI

struct ProductView: View {
    var product: ProductModel
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    ProductView(product: products.first!)
}
