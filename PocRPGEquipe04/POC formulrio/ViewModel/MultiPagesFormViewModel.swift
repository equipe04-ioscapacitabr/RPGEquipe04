//
//  MultiPagesFormViewModel.swift
//  POC formulario
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 08/08/25.
//

import Foundation

// Para um formulário com mais de uma página é interessante usar uma viewmodel para guardar os dados do formulário

// Voces podem adicionar outros atributos se acharem interessante, por exemplo, se possuem uma barra de progresso, podem salvar em qual página está no momento e quantas são no total :)

class MultiPagesFormViewModel: ObservableObject {
    @Published var nome: String = ""
    @Published var idade: Int = 0
    @Published var peso: Double = 0.0
    @Published var atividadeFisica: OpcoesAtividadeFisica = .sedentario
    @Published var foto: Data?
    
    // utilizamos uma variavel shared que vai ser chamada em qualquer parte do código e inicializamos a viewmodel
    static let shared = MultiPagesFormViewModel()
    
    // como o init é privado, só podemos criar objetos dentro da classe, ou seja, aquele shared lá em cima é a unica instância. Dessa forma garantimos que não teremos varias viewmodels com dados diferentes
    private init() {}

    func clearForms() {
        nome = ""
        idade = 0
        peso = 0.0
        foto = nil
        atividadeFisica = .sedentario
    }
    
    func printDados() {
        print("Nome: \(nome)")
        print("Idade: \(idade)")
        print("Peso: \(peso)")
        print("Atividade Física: \(atividadeFisica.rawValue)")
        print("Foto: \(foto != nil ? "Selecionada" : "Não selecionada")")
    }
}
