//
//  MultiPagesFormView.swift
//  POC formulario
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 08/08/25.
//

import SwiftUI

struct MultiPagesFormView: View {
    @ObservedObject var formsViewModel = MultiPagesFormViewModel.shared
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Nome", text: $formsViewModel.nome)
            
            Stepper("Idade: \(formsViewModel.idade) anos", value: $formsViewModel.idade, in: 0...120)
            
            Spacer()
            
            NavigationLink(destination: MultiPagesFormView2(), label: {
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
        .navigationTitle("Perfil")
    }
}

#Preview {
    MultiPagesFormView()
}
