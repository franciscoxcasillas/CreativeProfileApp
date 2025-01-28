//
//  ContentView.swift
//  CreativeProfileApp
//
//  Created by Francisco Jean on 28/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NameAndProfession()
            ProfileImage()
                .padding()
            Description()
        }
        .padding()
    }
}

struct NameAndProfession: View {
    var body: some View {
        VStack {
            Text("Francisco Javier Casillas")
                .font(.custom("AmericanTypewriter", size: 23))
            Text("iOS Developer")
                .font(.custom("BebasNeue", size: 20))
        }
    }
}

struct ProfileImage: View {
    var body: some View {
        Image("ProfilePicture")
            .resizable()
            .scaledToFit()
            .frame(width: 80)
            .clipShape(Circle())
    }
}

struct Description: View {
    var body: some View {
        VStack {
            Text("Hobbies")
                .bold()
            HStack {
                Image(systemName: "pencil")
                    .foregroundColor(.blue)
                Image(systemName: "books.vertical")
                    .foregroundColor(.pink)
                Image(systemName: "figure.skateboarding")
                    .foregroundColor(.green)
                Image(systemName: "music.microphone")
                    .foregroundColor(.orange)
                Image(systemName: "pianokeys")
                    .foregroundColor(.purple)
            }
            .padding(7)
            Text("Brief")
                .bold()
                .padding(7)
            Text("I’m a passionate iOS developer and a computer systems engineering student. I love mobile app development, music, graphic design, photography, and reading. My interests combine creativity and technology, driving me to build innovative and visually appealing projects.")
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    ContentView()
}
