//
//  MultiPagesFormView3.swift
//  POC formulario
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 08/08/25.
//

import SwiftUI
import PhotosUI

struct MultiPagesFormView3: View {
    @ObservedObject var formsViewModel = MultiPagesFormViewModel.shared
    
    @State private var fotoSelecionada: PhotosPickerItem?
    
    var body: some View {
        VStack {
            
            PhotosPicker("Selecionar Foto", selection: $fotoSelecionada, matching: .images)
            
            if let data = formsViewModel.foto,
               let imagem = UIImage(data: data) {
                Image(uiImage: imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            
            Spacer()
            
            NavigationLink(destination: ContentView(), label: {
                HStack {
                    Spacer()
                    
                    Text("Salvar")
                        .font(.headline)
                    
                    Spacer()
                }
                .padding()
                .background(Color.pink)
                .cornerRadius(10)
            })
            .buttonStyle(PlainButtonStyle())
        }
        .navigationTitle("Foto")
        .onChange(of: fotoSelecionada) { _, novoValor in
            Task {
                if let data = try? await novoValor?.loadTransferable(type: Data.self) {
                    formsViewModel.foto = data
                }
            }
        }
        .onDisappear {
            formsViewModel.printDados()
            formsViewModel.clearForms()
        }
    }
}

#Preview {
    MultiPagesFormView3()
}
