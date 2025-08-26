//
//  ContentView.swift
//  POC formulario
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 08/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Exemplos:")
                    .font(.title)
                    .fontWeight(.bold)
                
                NavigationLink(destination: OnePageFormView()) {
                    Text("Formulário de uma página")
                        .font(.headline)
                        .padding()
                        .background {
                            Color.green
                        }
                        .cornerRadius(15)
                }
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: MultiPagesFormView()) {
                    Text("Formulário de múltiplas páginas")
                        .font(.headline)
                        .padding()
                        .background {
                            Color.blue
                        }
                        .cornerRadius(15)
                }
                .buttonStyle(PlainButtonStyle())
                
                Image("gatinho-computador")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .cornerRadius(30)
            }
        }
    }
}

#Preview {
    ContentView()
}
