//
//  CriarFichas3View.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 18/08/25.
//

import SwiftUI

struct EditarFichas3View: View {
    
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
                        StepLine(active: false)
                        StepCircle(systemImage: "book", active: false)
                    }
                    .padding(.top, 10)
                    
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Atributos")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    
                    
                    HStack(alignment: .center) {
                        
                        VStack (alignment: .trailing) {
                            Stepper("Level: \(ficha.level)", value: $ficha.level, in:0...100)
                                .padding(7)
                            Stepper("Mana: \(ficha.mana)", value: $ficha.mana, in:0...100)
                                .padding(7)
                            Stepper("Ataque: \(ficha.ataque)", value: $ficha.ataque, in:0...100)
                                .padding(7)
                            Stepper("Defesa: \(ficha.defesa)", value: $ficha.defesa, in:0...100)
                                .padding(7)
                            Stepper("Velocidade: \(ficha.velocidade)", value: $ficha.velocidade, in:0...100)
                                .padding(7)
                        }
                        .padding(.leading, 30)
                        .cornerRadius(30)
                    }
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(15)
                    .foregroundColor(.white)
                    
                }
                
                Spacer()
                
                NavigationLink(destination: EditarFichas4View(), label: {
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
            .navigationTitle("Editar Fichas")
            
        }
    
}

#Preview {
    EditarFichas3View()
}
