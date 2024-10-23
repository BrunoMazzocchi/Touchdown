//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 22/10/24.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5) {
            // MARK: - NAV BAR
            NavigationBarDetailView(action: {
                shop.selectedProduct = nil
                shop.showingProduct = false
            })
            .padding(.horizontal)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            
            // MARK: - Headerå
            HeaderDetailView(title: "Protective Gear", name: shop.selectedProduct?.name ?? sampleProduct.name)
                .padding(.horizontal)
            // MARK: - Detail top part
            TopParDetailView(image: shop.selectedProduct?.image ?? sampleProduct.image, price: shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                .padding(.horizontal)
                .zIndex(1)
            // MARK: - Detail bottom part
            VStack (alignment: .center, spacing: 0) {
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                // MARK: - Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavoriteDetailView()
                    .padding(.vertical, 20)
                // MARK: - Add to cart
                AddToCartDetailView(
                    red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green,
                    blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                )
                .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(Color.white
                .clipShape(CustomShape())
                .padding(.top, -105)
            )
            
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
