//
//  CardFicha.swift
//  PocRPGEquipe04
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 29/07/25.
//

import SwiftUI

struct CardFicha: View {
    @Binding var fichaRecebida: FichaModel
    @State var InFicha: FichaModel?
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            // TODO: UTILIZAR FOTO DE VERDADE
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 92, height: 92)
                    .foregroundStyle(Color.gray)
                
                VStack(alignment: .leading, spacing: 18) {
                    HStack {
                        Text(fichaRecebida.nome)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        NavigationLink(destination: EditarFicha1View(ficha: $fichaRecebida)) {
                            Image(systemName: "pencil")
                        }
                        
                        Button(action: {
                            
                        },label: {
                            
                            Image(systemName: "trash")
                        })
                        
                    }
                    .foregroundStyle(Color.white)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Level: \(fichaRecebida.level)")
                            Text("Classe: \(fichaRecebida.classe)")
                        }
                        
                        
                        VStack(alignment: .leading) {
                            Text("Raça: \(fichaRecebida.raça)")
                            Text("Elemento: \(fichaRecebida.elemento)")
                            
                        }
                    }
                    .lineLimit(1)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.fontcolor))
                    
                }
                .sheet(item: $InFicha) {
                    InFicha = nil
                } content: { item in
                    FichaDetailView(ficha: item)
                }
            
                
        }
        .onTapGesture {
            InFicha = fichaRecebida
                
        }
        .padding()
        .foregroundColor(.white)
    }
}

#Preview {
    CardFicha(fichaRecebida: FichaModel( nome: "Daniel", descricao: "aaa", classe: "Guerreiro", raça: "Elfo", elemento: "Fogo", itens: ["Espada"], avatar: nil, level: 0, vida: 100, ataque: 0, defesa: 0, mana: 0, velocidade: 0))
        .padding(.horizontal, 40)
}
