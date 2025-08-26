//
//  FichaDetailView.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 25/08/25.
//

import SwiftUI

struct FichaDetailView: View {
    var ficha: FichaModel
    
    var body: some View {
        ZStack{
            Color(.backgroudRPG2)
                .ignoresSafeArea()
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 92, height: 92)
                        .foregroundStyle(Color.gray)
                        .padding(.trailing, 30)
                    VStack(alignment: .leading){
                        Text("Nome: \(ficha.nome)")
                        Text("Classe: \(ficha.classe)")
                        Text("Raça: \(ficha.raça)")
                        Text("Elemento: \(ficha.elemento)")
                    }
                    .padding()
                }
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Level: \(ficha.level)")
                        .padding(4)
                    HStack{
                        Text("Vida: \(ficha.vida)")
                            .padding(4)
                        Text("Ataque: \(ficha.ataque)")
                            .padding(4)
                        Text("Defesa: \(ficha.defesa)")
                            .padding(4)
                        
                    }
                    .padding(.bottom, 5)
                    HStack{
                        Text("Mana: \(ficha.mana)")
                            .padding(4)
                        Text("Velocidade: \(ficha.velocidade)")
                            .padding(4)
                    }
                    .padding(.bottom, 30)
                    
                    VStack(alignment: .leading){
                        Text("Itens:")
                        VStack(alignment: .leading) {
                            ForEach(ficha.itens, id: \.self) { item in
                                Text(item)
                            }
                        }
                        .fontWidth(.compressed)
                        .frame(width: 300, height: 100)
                        .border(Color.gray)
                    }
                    .padding(.bottom, 30)
                    
                    VStack(alignment: .leading){
                        Text("Descrição:")
                        VStack(alignment: .leading) {
                            Text(ficha.descricao)
                        }
                        .fontWidth(.compressed)
                        .frame(width: 300, height: 100)
                        .border(Color.gray)
                    }
                }
                
            }
            .background(.backgroudRPG2)
            .foregroundColor(.white)
            .frame(width: .infinity, height: .infinity)
            .padding()
            .ignoresSafeArea()
        }
    }
        
    
}

#Preview {
    FichaDetailView(ficha: FichaModel( nome: "Daniel", descricao: "aaa", classe: "Guerreiro", raça: "Elfo", elemento: "Fogo", itens: ["Espada"], avatar: nil, level: 0, vida: 100, ataque: 0, defesa: 0, mana: 0, velocidade: 0))
}
