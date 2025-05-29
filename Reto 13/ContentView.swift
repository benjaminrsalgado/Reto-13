//
//  ContentView.swift
//  Reto 13
//
//  Created by Benjamin Rojo on 29/05/25.
//

import SwiftUI

struct ContentView: View {
    let postres = [
       Postre(nombre: "Pastel", emoji: "🍰"),
       Postre(nombre: "Helado", emoji: "🍦"),//pepe
       Postre(nombre: "Donas", emoji: "🍩"),
       Postre(nombre: "Pastel", emoji: "🍰"),
       Postre(nombre: "Helado", emoji: "🍦"),//pepe
       Postre(nombre: "Donas", emoji: "🍩")
    ]
    var body: some View{
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.purple, .white]),
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            VStack{
                Text("Postres Favoritos")
                    .font(.title)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(postres) { pepe in
                            PostreCard(jue: pepe)
                                .padding()
                        }
                    }
                }
            }
        }
    }
}

struct Postre: Identifiable{
    let id = UUID()
    let nombre : String
    let emoji: String
}

struct PostreCard: View{
    let jue : Postre
    var body: some View{
        VStack{
            Text(jue.nombre)
            Text(jue.emoji)
        }
    }
}

#Preview {
    ContentView()
}
