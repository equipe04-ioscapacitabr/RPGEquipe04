//
//  MinhasFichasView.swift
//  PocRPGEquipe04
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 29/07/25.
//

import SwiftUI

struct MinhasFichasView: View {
    
    // FICHAS PARA TESTE
    
    let vetorFichas: [FichaModel] = [
        FichaModel(nome: "Daniel", lore: "aaa", classe: "Guerreiro", raça: "Elfo"),
        FichaModel(nome: "Caio", lore: "aaa", classe: "Guerreiro", raça: "Elfo"),
        FichaModel(nome: "Matheus", lore: "aaa", classe: "Guerreiro", raça: "Elfo")
    ]
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.pretoBackground
                .ignoresSafeArea(.all)
            
            VStack(spacing: 70) {
                
                VStack {
                ZStack {
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            HStack(spacing: 2) {
                                Text("Criar")
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "plus.app")
                                    .fontWeight(.semibold)
                            }
                        })
                    }
                    
                    Text("Minhas fichas")
                        .foregroundStyle(Color.white)
                        .font(.custom("Viga", size: 24))
                }
                
                Rectangle()
                    .foregroundStyle(Color.white)
                    .frame(height: 1)
                
            }
                
                ScrollView(.vertical) {
                    
                    VStack(spacing: 50) {
                        ForEach(vetorFichas) { ficha in
                            CardFicha(fichaRecebida: ficha)
                        }
                    }
                    
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    MinhasFichasView()
}
