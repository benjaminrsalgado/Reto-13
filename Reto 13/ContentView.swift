//
//  ContentView.swift
//  Reto 13
//
//  Created by Benjamin Rojo on 29/05/25.
//

import SwiftUI

struct ContentView: View {
    let profesionales = [
        Persona( nombre: "Benjamin", emoji: "💻", profesion: "iOS Developer"),
        Persona( nombre: "Francisco", emoji: "👨🏻‍🎨", profesion: "Pintor"),
        Persona( nombre: "Barb", emoji: "👩🏻‍🔬", profesion: "Cientifica"),
        Persona( nombre: "Vic", emoji: "👨🏻‍🏫", profesion: "Maestra"),
        Persona( nombre: "Benjamin", emoji: "💻", profesion: "iOS Developer"),
        Persona( nombre: "Francisco", emoji: "👨🏻‍🎨", profesion: "Pintor"),
        Persona( nombre: "Barb", emoji: "👩🏻‍🔬", profesion: "Cientifica"),
        Persona( nombre: "Vic", emoji: "👨🏻‍🏫", profesion: "Maestra"),
        Persona( nombre: "Benjamin", emoji: "💻", profesion: "iOS Developer"),
        Persona( nombre: "Francisco", emoji: "👨🏻‍🎨", profesion: "Pintor"),
        Persona( nombre: "Barb", emoji: "👩🏻‍🔬", profesion: "Cientifica"),
        Persona( nombre: "Vic", emoji: "👨🏻‍🏫", profesion: "Maestra"),
    ]
    var body: some View{
        ZStack{
                LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .top,
                endPoint: .bottom
                ).ignoresSafeArea()
            VStack{
                Text("Mis Contactos")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                ScrollView{
                    VStack{
                        ForEach(profesionales){ pepe in
                            PersonaCard(carta: pepe)
                        }
                    }
                   
                }
            }
        }
    }
}

struct Persona: Identifiable{
    let id = UUID()
    let nombre: String
    let emoji: String
    let profesion: String
}

struct PersonaCard: View{
    let carta : Persona
    var body: some View{
        HStack{
            Text(carta.emoji)
                .font(.title)
            VStack (alignment: .leading){
                Text(carta.nombre)
                    .font(.title)
                Text(carta.profesion)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .foregroundColor(.white)
            Spacer()
            Button(action: {
                print("Saludar")
            }) {
               Text("Hola, \(carta.nombre)!")
            }
            .foregroundColor(.white)
           
        }
            .padding()
            .background(.white.opacity(0.2))
            .cornerRadius(12)
            .shadow(radius: 5)
            .padding(.horizontal)
    }
}
#Preview {
    ContentView()
}
