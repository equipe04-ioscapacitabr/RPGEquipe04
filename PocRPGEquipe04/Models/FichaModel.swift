//
//  FichaModel.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import Foundation
import SwiftData
import _PhotosUI_SwiftUI

@Model
class FichaModel: Identifiable {
    var id: UUID
    var nome: String
    var descricao: String
    var classe: String
    var raca: String
    var elemento: String
    var itens: [String]
    var avatar: Data?
    var level: Int
    var vida: Int
    var ataque: Int
    var defesa: Int
    var mana: Int
    var velocidade: Int
    
    init(nome: String, descricao: String, classe: String, raca: String, elemento: String, itens: [String], avatar: Data?, level: Int, vida: Int, ataque: Int, defesa: Int, mana: Int, velocidade: Int) {
        self.id = UUID()
        self.nome = nome
        self.descricao = descricao
        self.classe = classe
        self.raca = raca
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
