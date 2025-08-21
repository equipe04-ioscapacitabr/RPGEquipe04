//
//  Aluno.swift
//  POC formulario
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 08/08/25.
//

import Foundation

class Aluno: Identifiable {
    var id: UUID = UUID()
    var nome: String
    var idade: Int
    var atividadeFisica: OpcoesAtividadeFisica
    var peso: Double
    var foto: Data?
    
    init(nome: String, idade: Int, atividadeFisica: OpcoesAtividadeFisica, foto: Data?, peso: Double) {
        self.id = UUID()
        self.nome = nome
        self.idade = idade
        self.atividadeFisica = atividadeFisica
        self.foto = foto
        self.peso = peso
    }
    
}

enum OpcoesAtividadeFisica: String, CaseIterable {
    case sedentario, ballet, musculacao, crossfit
    
    var displayText: String {
        switch self {
        case .sedentario:
            return "Sedentário"
        case .ballet:
            return "Ballet"
        case .musculacao:
            return "Musculação"
        case .crossfit:
            return "Crossfit"
        }
    }
}
