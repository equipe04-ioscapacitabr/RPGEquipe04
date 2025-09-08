//
//  FichasViewModel.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 23/05/25.
//

import Foundation
import SwiftData

class FichasViewModel: ObservableObject {
    private(set) var id: UUID?
    @Published var fichas: [FichaModel] =  []
    @Published var nome: String = ""
    @Published var descricao: String = ""
    @Published var classe: String = ""
    @Published var raca: String = ""
    @Published var elemento: String = ""
    @Published var itens: [String] = []
    @Published var avatar: Data?
    @Published var level: Int = 0
    @Published var vida: Int = 0
    @Published var ataque: Int = 0
    @Published var defesa: Int = 0
    @Published  var mana: Int = 0
    @Published var velocidade: Int = 0
    
    static let shared = FichasViewModel()

    private init(){}
    
    func addFicha(context: ModelContext) {
        let ficha = FichaModel(nome: self.nome, descricao: self.descricao, classe: self.classe, raca: self.raca, elemento: self.elemento, itens: self.itens, avatar: self.avatar, level: self.level, vida: self.vida, ataque: self.ataque, defesa: self.defesa, mana: self.mana, velocidade: self.velocidade)
        print("Função chamada")
        context.insert(ficha)
        
        do {
            try context.save()
            print("Ficha criada com sucesso!")
        } catch {
            print("Error em cria a ficha: \(error)")
        }
    }
    
    func removeFicha(ficha: FichaModel, context: ModelContext) {
        self.fichas.removeAll {$0.id == ficha.id}
        
        context.delete(ficha)
        
        do {
            try context.save()
        } catch {
            print("Error em deletar a ficha: \(error)")
        }
    }
    
    func updateFicha(context: ModelContext) {
        guard let id else { return }
                
            let descriptor = FetchDescriptor<FichaModel>(
                predicate: #Predicate { $0.id == id }
            )
            
            if let ficha = try? context.fetch(descriptor).first {
                ficha.nome = self.nome
                ficha.descricao = self.descricao
                ficha.classe = self.classe
                ficha.raca = self.raca
                ficha.elemento = self.elemento
                ficha.itens = self.itens
                ficha.avatar = self.avatar
                ficha.level = self.level
                ficha.vida = self.vida
                ficha.ataque = self.ataque
                ficha.defesa = self.defesa
                ficha.velocidade = self.velocidade
                do {
                    try context.save()
                } catch {
                    print("Error em editar a ficha: \(error)")
                }
            }
    }
    
    func getAllFichas(context: ModelContext){
        let descriptor = FetchDescriptor<FichaModel>()
        do {
            self.fichas = try context.fetch(descriptor)
        } catch {
            print("Erro ao buscar as fichas: \(error)")
        }
        
        
  
    }
    
    func clearFicha() {
        self.id = nil
        self.nome = ""
        self.descricao = ""
        self.classe = ""
        self.raca = ""
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
        self.id = ficha.id
        self.nome = ficha.nome
        self.descricao = ficha.descricao
        self.classe = ficha.classe
        self.raca = ficha.raca
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


