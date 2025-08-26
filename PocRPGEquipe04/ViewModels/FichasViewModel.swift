//
//  FichasViewModel.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import Foundation
import SwiftData

class FichasViewModel {
    @Published var fichas: [FichaModel] =  []
    
    static let shared = FichasViewModel()

    private init(){}
    
    func addFicha(_ ficha: FichaModel) {
        self.fichas.append(ficha)
    }
    
    func removeFicha(at index: Int) {
        self.fichas.remove(at: index)
    }
    
    func updateFicha(at index: Int, _ ficha: FichaModel) {
        self.fichas[index] = ficha
    }
    
    func getAllFichas() -> [FichaModel] {
        return self.fichas
    }
    
    func getFicha(at index: Int) -> FichaModel {
        return self.fichas[index]
    }
}


