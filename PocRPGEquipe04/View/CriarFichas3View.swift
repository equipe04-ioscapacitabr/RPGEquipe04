//
//  CriarFichas3View.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 18/08/25.
//

import SwiftUI

struct CriarFichas3View: View {
    @State private var nome: String = ""
    @State private var raça: String = ""
    @State private var classe: String = ""
    @State private var elemento: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                
                
                HStack(spacing: 0) {
                    StepCircle(systemImage: "doc", active: true)
                    StepLine(active: true)
                    StepCircle(systemImage: "gift", active: true)
                    StepLine(active: true)
                    StepCircle(systemImage: "eye", active: true)
                    StepLine(active: false)
                    StepCircle(systemImage: "book", active: false)
                }
                .padding(.top, 10)
                
                
                
                Text("Informações básicas")
                    .font(.headline)
                    .foregroundColor(.white)
                
                HStack {
                    VStack {
                        HStack {
                            Text("Nome")
                                .padding(.trailing, 45)
                            TextField("Nome do personagem", text: $nome)
                        }
                        .padding(13)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        HStack {
                            Text("Raça")
                                .padding(.trailing, 55)
                            TextField("Raça do personagem", text: $raça)
                        }
                        .padding(13)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        HStack {
                            Text("Classe")
                                .padding(.trailing, 46)
                            TextField("Classe do personagem", text: $classe)
                        }
                        .padding(13)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        HStack {
                            Text("Elemento")
                                .padding(.trailing, 30)
                            TextField("Elemento do personagem", text: $elemento)
                        }
                        .padding(13)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    }
                    
                }
                
                Spacer()
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
    CriarFichas3View()
}
