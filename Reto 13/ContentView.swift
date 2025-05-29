//
//  ContentView.swift
//  Reto 13
//
//  Created by Benjamin Rojo on 29/05/25.
//

import SwiftUI

struct ContentView: View {
    let mascotas = [
        Mascota(nombre: "perro", emoji: "👽"),
        Mascota(nombre: "gato", emoji: "🐈"),
        Mascota(nombre: "serpiente", emoji: "🤢")
  ]
    var body: some View{
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.pink, .white]),
                startPoint:.top,
                endPoint:.bottom
                ).ignoresSafeArea()
            VStack{
                Text("Mis Mascotas")
                    .font(.title)
                ScrollView(.horizontal){
                    HStack {
                        ForEach(mascotas) { mascota in
                            MascotaCardView(animal: mascota)
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

struct Mascota: Identifiable {
    let id = UUID()
    let nombre: String
    let emoji: String
}

struct MascotaCardView: View{
    let animal : Mascota //se guarda las propiedades de Mascota para usarla aqui en esta estructura
    var body: some View{
        HStack{
            Text(animal.emoji)
            Text(animal.nombre)
            Spacer()
            Button(action: {
                print(" Mascota favorita: animal.nombre")
            }) {
                Image(systemName: "heart.fill")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    ContentView()
}
