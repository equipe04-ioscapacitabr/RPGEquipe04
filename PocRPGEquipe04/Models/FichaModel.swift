//
//  FichaModel.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import Foundation
import SwiftData

@Model
class FichaModel: Identifiable {
    @Attribute var id = UUID()
    @Attribute var nome: String
    @Attribute var descricao: String
    @Attribute var classe: String
    @Attribute var raça: String
    @Attribute var elemento: String
    @Attribute var itens: [String]
    @Attribute var avatar: Data?
    @Attribute var level: Int
    @Attribute var vida: Int
    @Attribute var ataque: Int
    @Attribute var defesa: Int
    @Attribute var mana: Int
    @Attribute var velocidade: Int
    
    init(nome: String, descricao: String, classe: String, raça: String, elemento: String, itens: [String], avatar: Data?, level: Int, vida: Int, ataque: Int, defesa: Int, mana: Int, velocidade: Int) {
        self.nome = nome
        self.descricao = descricao
        self.classe = classe
        self.raça = raça
        self.elemento = elemento
        self.itens = itens
        self.avatar = avatar
        self.level = level
        self.vida = vida
        self.ataque = ataque
        self.defesa = defesa
        self.mana = mana
        self.velocidade = velocidade
    }
}
