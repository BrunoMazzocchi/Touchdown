//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 23/10/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    let red: Double
    let green : Double
    let blue: Double
    
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: red,
                green: green,
                blue: blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView(
        red:  sampleProduct.red,
        green: sampleProduct.green,
        blue: sampleProduct.blue
    )
}
