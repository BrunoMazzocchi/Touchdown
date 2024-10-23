//
//  TopParDetailView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 22/10/24.
//

import SwiftUI

struct TopParDetailView: View {
    let image: String
    let price: String
    @State private var isAnimating: Bool = false
    var body: some View {
        HStack (alignment: .center, spacing: 6) {
            VStack (alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(price)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }
        .onAppear (perform: {
            withAnimation(.easeOut(duration: 0.1)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopParDetailView(image: sampleProduct.image, price: sampleProduct.formattedPrice)
}
