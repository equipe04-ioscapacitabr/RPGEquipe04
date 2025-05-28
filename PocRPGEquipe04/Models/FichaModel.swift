//
//  FichaModel.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import Foundation

struct FichaModel: Identifiable {
    var id = UUID()
    var nome: String
    var lore: String
    var classe: String
    var raça: String
    var equipamentos: [String] = []
}
