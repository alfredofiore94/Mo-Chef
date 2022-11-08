//
//  Ricetta.swift
//  CookMo
//
//  Created by Alfredo Fiore on 14/09/22.
//

import Foundation

struct Ricetta: Identifiable {
    
    let id: String = UUID().uuidString
    var nomePiatto: String
    var tipoPiatto: String
    var difficolta: String
    var tempoPrep: String
    var costo : String
    var listaIngredienti: [Ingrediente]
    
    init(nomePiatto: String, tipopiatto: String, difficolta: String, tempoPrep: String, costo: String, listaIngredinti: [Ingrediente]){
        self.nomePiatto = nomePiatto
        self.tipoPiatto = tipopiatto
        self.difficolta = difficolta
        self.tempoPrep = tempoPrep
        self.costo = costo
        self.listaIngredienti = listaIngredinti
    }
}

struct Ingrediente: Identifiable {
    
    let id: String = UUID().uuidString
    var nome: String
    var quantita: Float
    var uMisura: String
    var isSelezionato: Bool
    
    init(nome: String, quantita: Float, uMisura: String, isSelezionato: Bool){
        self.nome = nome
        self.quantita = quantita
        self.uMisura = uMisura
        self.isSelezionato = isSelezionato
    }
}

struct StepProcedimento: Hashable {
    
    let id: String = UUID().uuidString
    var nome: String?
    var descrizione: String
    var immagini: [String]
    
    init(nome: String? = nil, descrizione: String, immagini: [String]){
        self.nome = nome
        self.descrizione = descrizione
        self.immagini = immagini
    }
}
