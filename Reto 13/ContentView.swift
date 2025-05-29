//
//  ContentView.swift
//  Reto 13
//
//  Created by Benjamin Rojo on 29/05/25.
//

import SwiftUI

struct ContentView: View {
    let productos = [
        Product(nombreProducto: "iPhone 15", precio: 999.99, imagenLocal: "iphone", imagenWeb: "https://..."),
        Product(nombreProducto: "MacBook Air", precio: 1299.99, imagenLocal: "macbook", imagenWeb: "https://..."),
        Product(nombreProducto: "iPad Pro", precio: 1099.99, imagenLocal: "ipad", imagenWeb: "https://...")
    ]

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text("Catálogo de Productos")
                    .font(.title)
                    .foregroundColor(.blue)
                
                ProductListView(productosApple: productos)
            }
        }
    }
}

struct Product: Identifiable{
        let id = UUID()
        let nombreProducto: String
        let precio: Double
        let imagenLocal: String
        let imagenWeb: String
}


struct ProductRowView: View {
    let product: Product
    
    var body: some View {
        HStack {
            Image(product.imagenLocal)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(product.nombreProducto)
                    .bold()
                Text("$\(product.precio, specifier: "%.2f")")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Button(action: {
                print("Producto favorito: \(product.nombreProducto)")
            }) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

struct ProductListView: View {
    let productosApple: [Product]
    
    var body: some View {
        List(productosApple) { product in
            ProductRowView(product: product)
        }
    }
}

#Preview {
    ContentView()
}
