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

struct PizzaCard: View{
    let comida: Pizza
    var body: some View{
        HStack{
            Image(systemName: comida.emoji)
                .foregroundColor(.white)
            Text(comida.nombre)
                .font(.title)
                .foregroundColor(.white)
            Spacer()
            Button("Ordenar") {
                print("Ordenaste una \(comida.nombre)")
            }
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
        }
    }
}
#Preview {
    ContentView()
}
