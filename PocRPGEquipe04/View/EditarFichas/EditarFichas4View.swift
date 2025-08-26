//
//  CriarFichas4View.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 18/08/25.
//

import SwiftUI
import _PhotosUI_SwiftUI

struct EditarFichas4View: View {
    @Binding var ficha: FichaModel
    
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
                            PhotosPicker("imagem do personagem", selection: $ficha.avatar)
                                .padding(13)
                                .padding(.leading, 0)
                                .foregroundStyle(.blue)
                            Image(systemName: "upload")
                                .foregroundColor(.blue)
                                .font(.system(size: 20, weight: .bold))
                                .padding(10)
                        }
                        
                        
                        Text("Descrição")
                            .padding(13)
                        
                        TextField("Descrição do personagem", text: $ficha.descricao)
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
            .buttonStyle(PlainButtonStyle())
        }
        .padding()
        .preferredColorScheme(.dark)
        .navigationTitle("Editar Ficha")
        
    }
}

// Componente do círculo da etapa

#Preview {
    EditarFichas4View()
}
