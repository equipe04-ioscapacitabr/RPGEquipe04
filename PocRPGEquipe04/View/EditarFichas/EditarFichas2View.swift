//
//  CriarFichas2View.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 18/08/25.
//

import SwiftUI

struct EditarFichas2View: View {
    @State var ficha = FichaModel( nome: "Daniel", descricao: "aaa", classe: "Guerreiro", raça: "Elfo", elemento: "Fogo", itens: ["Espada"], avatar: nil, level: 0, vida: 100, ataque: 0, defesa: 0, mana: 0, velocidade: 0)

    @State private var nomeItem: String = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 16) {
                
                
                HStack(spacing: 0) {
                    StepCircle(systemImage: "doc", active: true)
                    StepLine(active: true)
                    StepCircle(systemImage: "gift", active: true)
                    StepLine(active: false)
                    StepCircle(systemImage: "eye", active: false)
                    StepLine(active: false)
                    StepCircle(systemImage: "book", active: false)                }
                .padding(.top, 10)
                
                
                VStack(alignment: .leading, spacing: 16){
                    Text("Itens")
                        .font(.headline)
                        .foregroundColor(.white)
                    HStack {
                        TextField("Nome do item", text: $nomeItem)
                            .padding(13)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(8)
                            .foregroundColor(.white)
                        
                        Button(action: {
                            if !nomeItem.isEmpty {
                                ficha.itens.append(nomeItem)
                                nomeItem = ""
                            }
                        }) {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.blue)
                                .clipShape(Circle())
                        }
                    }
                    
                    ScrollView {
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(ficha.itens, id: \.self) { item in
                                Text(item)
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
                Spacer()
            NavigationLink(destination: EditarFichas3View(), label: {
                HStack {
                    Spacer()
                    
                    Text("Proximo")
                        .font(.headline)
                    
                    Spacer()
                }
                .padding()
                .background(Color.pink)
                .cornerRadius(10)
            })
            .buttonStyle(PlainButtonStyle())
        }
        .padding()
        .preferredColorScheme(.dark)
        .navigationTitle("Editar Ficha")
    }
}

#Preview {
   EditarFichas2View()
}
