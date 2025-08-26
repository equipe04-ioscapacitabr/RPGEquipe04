//
//  CreateFichasView.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import SwiftUI

struct CreateFichasView: View {

     
    
    var body: some View {
        Text("Criar Ficha")
        /*
        ZStack{
            Color.backgroundRPG.edgesIgnoringSafeArea(.all)
            if (verForm){
                
                VStack{
                    Text("Criar Ficha")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                    VStack(alignment: .leading){
                        VStack{
                            Text("Nome do personagem:")
                            TextField("Nome", text: $nome)
                                .foregroundStyle(Color(.black))
                        }
                        .padding()
                        VStack{
                            Text("Lore do personagem:")
                            TextField("Lore", text: $lore)
                                .foregroundStyle(Color(.black))
                                .padding()
                                .frame(height: 50)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 1)
                                )                    }
                        .padding()
                        
                        VStack{
                            Text("Classe do personagem: ")
                            TextField("Classe", text: $classe)
                                .foregroundStyle(Color(.black))
                        }
                        .padding()
                        VStack{
                            Text("Raça do personagem:")
                            TextField("Raça", text: $raça)
                                .foregroundStyle(Color(.black))
                        }
                        .padding()
                        
                        
                        
                    }
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundStyle(Color(.white))
                    
                    Button {
                        if($nome.wrappedValue != "" && $lore.wrappedValue != "" && $raça.wrappedValue != "" && $classe.wrappedValue != "")
                        {
                            
                            fichasview.addFicha(FichaModel(nome: $nome.wrappedValue, lore: $lore.wrappedValue, classe: $classe.wrappedValue, raça: $raça.wrappedValue,
                                                           equipamentos: []))
                            
                            Verfichas.toggle()
                            verForm.toggle()
                        }
                        
                    } label: {
                        Text("Adicionar Ficha")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
            }
            if(Verfichas){
                List {
                    ForEach(fichasview.fichas) { ficha in
                        VStack(alignment: .leading) {
                            Text(ficha.nome).font(.headline)
                            Text("Classe: \(ficha.classe)")
                            Text("Raça: \(ficha.raça)")
                            Text("Lore: \(ficha.lore)")
                            Text("Equipamentos: \(ficha.equipamentos.joined(separator: ", "))")
                        }
                        .padding()
                        
                    }
                    Button(action: {
                        Verfichas.toggle()
                        verForm.toggle()
                    }, label: {
                        Text("Voltar")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.red)
                            .cornerRadius(10)
                    })
                }
            }
        }
         */
    }
 
}
    
#Preview{
    CreateFichasView()
}


