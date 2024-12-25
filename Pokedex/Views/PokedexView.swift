//
//  SwiftUIView.swift
//  Pokedex
//
//  Created by Jeet P Mehta on 12/10/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .background(Color.red)
        
    }
}

#Preview {
    SwiftUIView()
}
