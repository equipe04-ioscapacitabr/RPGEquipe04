//
//  CriarFichas2View.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 18/08/25.
//

import SwiftUI

struct CriarFichas2View: View {
    @State private var nomeItem: String = ""
    @State private var itens: [String] = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                
                
                HStack(spacing: 0) {
                    StepCircle(systemImage: "doc", active: true)
                    StepLine(active: true)
                    StepCircle(systemImage: "gift", active: true)
                    StepLine(active: false)
                    StepCircle(systemImage: "eye", active: false)
                    StepLine(active: false)
                    StepCircle(systemImage: "book", active: false)                }
                .padding(.top, 10)
                
                
                
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
                            itens.append(nomeItem)
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
                
                Spacer()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(itens, id: \.self) { item in
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
            .padding()
            .navigationBarTitle("Criar ficha", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Voltar") {
                    
                }
                .foregroundColor(.blue),
                trailing: Button("Salvar") {
                    print("Salvar ficha")
                }
                .foregroundColor(.blue)
            )
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    CriarFichas2View()
}
