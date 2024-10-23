//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 22/10/24.
//

import SwiftUI

struct HeaderDetailView: View {
    let title: String
    let name: String
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            Text(title)
            
            Text(name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView(title: "Protective Gear", name: "Name")
}
