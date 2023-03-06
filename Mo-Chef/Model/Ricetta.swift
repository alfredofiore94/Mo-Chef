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
    var numeroPersone: Int?
    var listaIngredienti: [Ingrediente]
    var listaStep: [StepProcedimento]
    var presentazione: String
    
    init(nomePiatto: String = "", tipopiatto: String = "", difficolta: String = "", tempoPrep: String = "", costo: String = "", numeroPersone: Int? = nil, listaIngredinti: [Ingrediente] = [], listastep: [StepProcedimento] = [], presentazione: String = ""){
        self.nomePiatto = nomePiatto
        self.tipoPiatto = tipopiatto
        self.difficolta = difficolta
        self.tempoPrep = tempoPrep
        self.costo = costo
        self.numeroPersone = numeroPersone
        self.listaIngredienti = listaIngredinti
        self.listaStep = listastep
        self.presentazione = presentazione
    }
}

struct Ingrediente: Identifiable, Equatable, Hashable {
    
    let id: String = UUID().uuidString
    var nome: String
    var quantita: String
    var uMisura: String
    var isSelezionato: Bool
    
    init(nome: String = "", quantita: String = "", uMisura: String = "", isSelezionato: Bool = false){
        self.nome = nome
        self.quantita = quantita
        self.uMisura = uMisura
        self.isSelezionato = isSelezionato
    }
}

struct StepProcedimento: Identifiable, Hashable {
    
    let id: String = UUID().uuidString
    var nome: String
    var descrizione: String
    var immagini: [String]
    
    init(nome: String , descrizione: String, immagini: [String]){
        self.nome = nome
        self.descrizione = descrizione
        self.immagini = immagini
    }
}
