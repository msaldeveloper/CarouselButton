//
//  SwiftUIView.swift
//  CarouselButton
//
//  Created by Mario Saldana on 06/03/25.
//

import SwiftUI
import CarouselButton

@available(macOS 12.0, iOS 15.0, *)
struct MainView: View {
    var array: [String] = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        CarouselButton(
            items: array,
            color: Color.green,
            spacing: 5,
            cornerRadius: 20,
            frame: (300, 100)
        ) { item in
            Text(item)
                .foregroundColor(Color.black)
                .font(.headline)
                .fontWeight(.bold)
        } buttonAction: { item in
            print("button pressed \(item)")
        }
        .padding()
    }
}

// Vista previa para dispositivos que sean compatibles
@available(iOS 15.0, macOS 12.0, *)
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewLayout(.sizeThatFits) // Agregamos un tamaño de vista previa
            .padding()
    }
}

