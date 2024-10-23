//
//  FooterView.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 21/10/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright Robert Petras\nAll right reserved.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FooterView()
}
