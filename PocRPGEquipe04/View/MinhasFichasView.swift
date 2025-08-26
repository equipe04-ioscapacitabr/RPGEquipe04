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
        FichaModel( nome: "Daniel", descricao: "aaa", classe: "Guerreiro", raça: "Elfo", elemento: "Fogo", itens: ["Espada"], avatar: nil, level: 0, vida: 100, ataque: 0, defesa: 0, mana: 0, velocidade: 0),
        FichaModel( nome: "Daniel", descricao: "aaa", classe: "Guerreiro", raça: "Elfo", elemento: "Fogo", itens: ["Espada"], avatar: nil, level: 0, vida: 100, ataque: 0, defesa: 0, mana: 0, velocidade: 0),
        FichaModel( nome: "Daniel", descricao: "aaa", classe: "Guerreiro", raça: "Elfo", elemento: "Fogo", itens: ["Espada"], avatar: nil, level: 0, vida: 100, ataque: 0, defesa: 0, mana: 0, velocidade: 0)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.pretoBackground
                    .ignoresSafeArea(.all)
                
                VStack(spacing: 70) {
                    
                    VStack {
                        ZStack {
                            HStack {
                                
                                Spacer()
                                
                                
                                
                                NavigationLink(destination: CriarFicha1View()) {
                                    Text("Criar")
                                        .fontWeight(.semibold)
                                    
                                    Image(systemName: "plus.app")
                                        .fontWeight(.semibold)
                                }
                                
                                
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
        
}

#Preview {
    MinhasFichasView()
}
