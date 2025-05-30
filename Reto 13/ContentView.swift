//
//  ContentView.swift
//  Reto 13
//
//  Created by Benjamin Rojo on 29/05/25.
//

import SwiftUI

struct ContentView: View {
    let alchol = [
        Bebida(nombre: "Bacardi", emoji: "🍻"),
        Bebida(nombre: "Torres 10", emoji: "🍻"),
        Bebida(nombre: "Tequila", emoji: "🍻"),
        Bebida(nombre: "Champagne", emoji: "🍻"),
        Bebida(nombre: "Bacardi", emoji: "🍻"),
        Bebida(nombre: "Torres 10", emoji: "🍻"),
        Bebida(nombre: "Tequila", emoji: "🍻"),
        Bebida(nombre: "Champagne", emoji: "🍻")
    ]
    
    var body: some View{
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.yellow, .white]),
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            
            VStack{
                Text("Welcome to the Homero's Bar")
                    .font(.title)
                ScrollView{
                    VStack{
                        ForEach(alchol){ pepe in
                            BebidaCard(cantina: pepe)
                        }
                    }
                }
                
            }
        }
    }
}
struct Bebida: Identifiable{
    let id = UUID()
    let nombre: String
    let emoji: String
}

struct BebidaCard: View{
    let cantina : Bebida
    var body: some View{
        Text(cantina.nombre)
            .foregroundColor(.black)
            .font(.headline)
        Text(cantina.emoji)
            .font(.headline)
    }
}
#Preview {
    ContentView()
}
