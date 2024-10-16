//
//  ContentView.swift
//  Lab08
//
//  Created by Joel Ward on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Chair(legWidth: 20, legHeight: 150, seatLength: 200, seatThickness: 100)
                .fill(.black)
            
            Chair(legWidth: 10, legHeight: 150, seatLength: 150, seatThickness: 30)
                .fill(.black)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
