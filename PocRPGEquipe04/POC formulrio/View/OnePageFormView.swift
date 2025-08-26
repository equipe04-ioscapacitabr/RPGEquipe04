//
//  OnePageFormView.swift
//  POC formulario
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 08/08/25.
//

import SwiftUI
import PhotosUI

// o formulário de uma página é muito simples, se quiser utilizar uma viewmodel tudo bem, mas não há necessidade
// basta criar as variaveis que vao guardar as informacoes e no final chamar a funcao de salvar, aqui no exemplo é só um print mas na realidade seria adicionar os dados em algum canto

struct OnePageFormView: View {
    @State var nome: String = ""
    
    @State var pesoTexto: String = ""
    @State var peso: Double = 60.0
    
    @State var idade: Int = 0
    
    @State var atividadeFisica: OpcoesAtividadeFisica = .sedentario
    
    @State var foto: Data?
    @State private var fotoSelecionada: PhotosPickerItem?
    
    var body: some View {
            Form {
                Section(header: Text("Perfil")) {
                    TextField("Nome", text: $nome)
                    
                    Stepper("Idade: \(idade) anos", value: $idade, in: 0...120)
                    
                    Picker("Atividade Física", selection: $atividadeFisica) {
                        ForEach(OpcoesAtividadeFisica.allCases, id: \.self) { opcao in
                            Text(opcao.displayText).tag(opcao)
                        }
                    }
                }
                
                Section(header: Text("Saúde")) {
                    TextField("Peso (kg)", text: $pesoTexto)
                        .keyboardType(.decimalPad)
                    
                    
                    PhotosPicker("Selecionar Foto", selection: $fotoSelecionada, matching: .images)
                    
                    if let foto, let imagem = UIImage(data: foto) {
                        Image(uiImage: imagem)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
                
                Section {
                    Button("Enviar") {
                        salvarFormulario()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationTitle("Formulário")
            .onChange(of: fotoSelecionada) { _, novoValor in
                Task {
                    if let data = try? await novoValor?.loadTransferable(type: Data.self) {
                        foto = data
                    }
                }
            }
    }
    
    private func salvarFormulario() {
        peso = Double(pesoTexto) ?? 0.0
        
        print("Nome: \(nome)")
        print("Idade: \(idade)")
        print("Atividade Física: \(atividadeFisica.rawValue)")
        print("Peso: \(peso)")
        print("Foto: \(foto != nil ? "Selecionada" : "Não selecionada")")
    }
}

#Preview {
    OnePageFormView()
}
