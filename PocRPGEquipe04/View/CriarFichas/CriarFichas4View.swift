//
//  CriarFichas4View.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 18/08/25.
//

import SwiftUI
import _PhotosUI_SwiftUI

struct CriarFichas4View: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @State private var avatarSelecionado: PhotosPickerItem?
    @ObservedObject var fichaViewModel = FichasViewModel.shared
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 16) {
                
                
                HStack(spacing: 0) {
                    StepCircle(systemImage: "doc", active: true)
                    StepLine(active: true)
                    StepCircle(systemImage: "gift", active: true)
                    StepLine(active: true)
                    StepCircle(systemImage: "eye", active: true)
                    StepLine(active: true)
                    StepCircle(systemImage: "book", active: true)
                }
                .padding(.top, 10)
                
            }
            
            
            VStack(alignment: .leading, spacing: 16) {
                Text("História")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text("Avatar")
                                .padding(13)
                                .padding(.trailing, 40)
                            PhotosPicker("imagem do personagem", selection: $avatarSelecionado)
                                .padding(13)
                                .padding(.leading, 0)
                                .foregroundStyle(.blue)
                        }
                        
                        
                        Text("Descrição")
                            .padding(13)
                        
                        TextField("Descrição do personagem", text: $fichaViewModel.descricao)
                            .padding()
                            .padding(.bottom, 150)
                    }
                    
                    
                    VStack (alignment: .trailing) {
                        
                        
                    }
                    
                    .cornerRadius(30)
                }
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
                .foregroundColor(.white)
            }
            Spacer()
            
            NavigationLink(destination: MinhasFichasView(), label: {
                HStack {
                    Spacer()
                    Text("Salvar")
                        .font(.headline)
                    Spacer()
                    
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                
            })
            .onTapGesture {
                
                fichaViewModel.addFicha(context: context)
                fichaViewModel.clearFicha()
                fichaViewModel.getAllFichas(context: context)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding()
        .preferredColorScheme(.dark)
        .navigationTitle("Criar Ficha")
        .onChange(of: avatarSelecionado) { _, novoValor in
            Task {
                if let data = try? await novoValor?.loadTransferable(type: Data.self) {
                    fichaViewModel.avatar = data
                }
            }
        }
    }
}

// Componente do círculo da etapa

#Preview {
    CriarFichas4View()
}
