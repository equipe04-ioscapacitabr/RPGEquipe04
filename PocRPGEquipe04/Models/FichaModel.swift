//
//  FichaModel.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import Foundation

// TODO: ATUALIZAR ESSE MODELO PRA FICAR IGUAL AO FIGMA (COM NIVEL, ELEMENTO E ETC)

struct FichaModel: Identifiable {
    var id = UUID()
    var nome: String
    var lore: String
    var classe: String
    var raça: String
    var equipamentos: [String] = []
}
