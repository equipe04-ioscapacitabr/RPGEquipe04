//
//  FichasViewModel.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import Foundation
import SwiftData

class FichasViewModel: ObservableObject {
    @Published var fichas: [FichaModel] =  []
    var nome: String = ""
    var descricao: String = ""
    var classe: String = ""
    var raça: String = ""
    var elemento: String = ""
    var itens: [String] = []
    var avatar: Data?
    var level: Int = 0
    var vida: Int = 0
    var ataque: Int = 0
    var defesa: Int = 0
    var mana: Int = 0
    var velocidade: Int = 0
    
    static let shared = FichasViewModel()

    private init(){}
    
    func addFicha() {
        let ficha = FichaModel(nome: self.nome, descricao: self.descricao, classe: self.classe, raça: self.raça, elemento: self.elemento, itens: self.itens, avatar: self.avatar!, level: self.level, vida: self.vida, ataque: self.ataque, defesa: self.defesa, mana: self.mana, velocidade: self.velocidade)
        self.fichas.append(ficha)
    }
    
    func removeFicha(at index: Int) {
        self.fichas.remove(at: index)
    }
    
    func updateFicha(at index: Int) {
        self.fichas[index] = FichaModel(nome: self.nome, descricao: self.descricao, classe: self.classe, raça: self.raça, elemento: self.elemento, itens: self.itens, avatar: self.avatar!, level: self.level, vida: self.vida, ataque: self.ataque, defesa: self.defesa, mana: self.mana, velocidade: self.velocidade)
    }
    
    func getAllFichas() -> [FichaModel] {
        return self.fichas
    }
    
    func getFicha(at index: Int) -> FichaModel {
        return self.fichas[index]
    }
    
    func clearFicha() {
        self.nome = ""
        self.descricao = ""
        self.classe = ""
        self.raça = ""
        self.elemento = ""
        self.itens = []
        self.avatar = nil
        self.level = 0
        self.vida = 0
        self.ataque = 0
        self.defesa = 0
        self.mana = 0
        self.velocidade = 0

    }
    
    func filltoEdit(ficha: FichaModel) {
        self.nome = ficha.nome
        self.descricao = ficha.descricao
        self.classe = ficha.classe
        self.raça = ficha.raça
        self.elemento = ficha.elemento
        self.itens = ficha.itens
        self.avatar = ficha.avatar
        self.level = ficha.level
        self.vida = ficha.vida
        self.ataque = ficha.ataque
        self.defesa = ficha.defesa
        self.mana = ficha.mana
        self.velocidade = ficha.velocidade
    }
}


