//
//  ContentView.swift
//  Reto 13
//
//  Created by Benjamin Rojo on 29/05/25.
//

import SwiftUI

struct ContentView: View {
    let comida = [
        Pizza(nombre: "Stich pizza", emoji: "heart.fill"),
        Pizza(nombre: "Taylor pizza", emoji: "heart.fill"),
        Pizza(nombre: "Swift pizza", emoji: "heart.fill"),
        Pizza(nombre: "Eras pizza", emoji: "heart.fill"),
        Pizza(nombre: "WWDC pizza", emoji: "heart.fill"),
        Pizza(nombre: "Cuerptino pizza", emoji: "heart.fill"),
        Pizza(nombre: "Apple pizza", emoji: "heart.fill")
    ]
    var body: some View{
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.red, .orange]),
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            
            VStack{
                Text("Pizza Swift")
                    .font(.title)
                    .foregroundColor(.white)
                Image(systemName: "star.fill")
                    .font(.title)
                    .foregroundColor(.white)
                ScrollView{
                    VStack{
                        ForEach(comida){ pepe in
                            PizzaCard (comida: pepe)
                        }
                    }
                }
               }
        }
    }
}

struct Pizza: Identifiable{
    let id = UUID()
    let nombre: String
    let emoji: String
}

struct PizzaCard: View {
    let comida: Pizza

    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: comida.emoji)
                .font(.largeTitle)
                .foregroundColor(.white)

            VStack(alignment: .leading) {
                Text(comida.nombre)
                    .font(.headline)
                    .foregroundColor(.white)
                Text("¡Una pizza especial!")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))
            }

            Spacer()

            Button("Ordenar") {
                print("Ordenaste una \(comida.nombre)")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Color.white)
            .foregroundColor(.red)
            .clipShape(Capsule())
        }
        .padding()
       
    }
}
#Preview {
    ContentView()
}
