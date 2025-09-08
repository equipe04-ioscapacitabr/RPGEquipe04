//
//  MinhasFichasView.swift
//  PocRPGEquipe04
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 29/07/25.
//

import SwiftUI
import SwiftData

struct MinhasFichasView: View {
    @StateObject var fichaViewModel = FichasViewModel.shared
    @Environment(\.modelContext) var context
    
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
                            ForEach(fichaViewModel.fichas, id: \.id) { ficha in
                                CardFicha(fichaRecebida: ficha)
                            }
                        }
                        
                    }
                    
                }
                .padding()
            }
            
        }
        .onAppear {
            fichaViewModel.getAllFichas(context: context)
        }
    }
        
}

#Preview {
    MinhasFichasView()
}
