//
//  MultiPagesFormView2.swift
//  POC formulario
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 08/08/25.
//

import SwiftUI

struct MultiPagesFormView2: View {
    @ObservedObject var formsViewModel = MultiPagesFormViewModel.shared
    
    @State private var pesoTexto: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Peso (kg)", text: $pesoTexto)
                .keyboardType(.decimalPad)
            
            
            Picker("Atividade Física", selection: $formsViewModel.atividadeFisica) {
                ForEach(OpcoesAtividadeFisica.allCases, id: \.self) { opcao in
                    Text(opcao.displayText).tag(opcao)
                }
            }
            
            
            Spacer()
            
            NavigationLink(destination: MultiPagesFormView3(), label: {
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
        .navigationTitle("Saúde")
    }
}

#Preview {
    MultiPagesFormView2()
}
