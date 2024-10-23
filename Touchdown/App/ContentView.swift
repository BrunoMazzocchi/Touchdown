//
//  ContentView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 21/10/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        // MARK: - Body
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .background(.white)
                        .shadow(radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack (spacing: 0) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            // MARK: - Footer
                            FooterView()
                                .padding(.horizontal)
                        }
                        
                    })
                    
                }
            } else {
                ProductDetailView()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
        .environmentObject(Shop())
}
