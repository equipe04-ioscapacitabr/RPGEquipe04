//
//  FichasViewModel.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import Foundation

class FichasViewModel {
    var fichas: [FichaModel] =  []
        
    init(fichas: [FichaModel] = []) {
        self.fichas = fichas
    }
    
    func addFicha(_ ficha: FichaModel) {
        self.fichas.append(ficha)
    }
}

