//
//  CardFicha.swift
//  PocRPGEquipe04
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 29/07/25.
//

import SwiftUI

struct CardFicha: View {
    var fichaRecebida: FichaModel
    
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
                    
                    Button(action: {
                        
                    },label: {
                        Image(systemName: "pencil")
                    })
                    
                    Button(action: {
                        
                    },label: {
                        Image(systemName: "trash")
                    })
                    
                    
                }
                .foregroundStyle(Color.white)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Level: \(fichaRecebida.raça)")
                        Text("Classe: \(fichaRecebida.classe)")
                    }
                    
                    
                    VStack(alignment: .leading) {
                        Text("Raça: \(fichaRecebida.raça)")
                        Text("Elemento: \(fichaRecebida.classe)")
                           
                    }
                }
                .lineLimit(1)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(Color.azulAcizentado)
                
            }
        }
    }
}

#Preview {
    CardFicha(fichaRecebida: FichaModel(nome: "Daniel", lore: "aa", classe: "aaa", raça: "bba"))
        .padding(.horizontal, 40)
}
