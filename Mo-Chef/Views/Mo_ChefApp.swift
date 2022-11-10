//
//  Mo_ChefApp.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

@main
struct Mo_ChefApp: App {
    
    static let arancioneCosmo: Color = Color(red: 239 / 255, green: 128 / 255, blue: 74 / 255)
    
    static let verdeScuro: Color = Color(red: 58 / 255, green: 173 / 255, blue: 168 / 255)
    static let verdeSelezione: Color = Color(red: 114 / 255, green: 223 / 255, blue: 217 / 255)

    
    static let fontTabBar: Font = Font.custom("SF Pro Text", size: 15)

    var body: some Scene {
        WindowGroup {
            ContentView().ignoresSafeArea()
        }
    }
}

struct DataTest {
    static func getDataTest() -> [Ricetta]{
        var ricettaLista: [Ricetta] = []
        
        var listaIngr: [Ingrediente] = [Ingrediente(nome: "zucchero", quantita: 23.5, uMisura: "g", isSelezionato: false)]
        
        let count = 1...10
        for _ in count { listaIngr.append(Ingrediente(nome: "farina", quantita: 23.5, uMisura: "g", isSelezionato: false))
        }
        
        let listaStep: [StepProcedimento] = [
            StepProcedimento(nome: "Lievitino", descrizione: "Prima di tutto preparate l'emulsione aromatica che è ciò determina sapore e profumo al pandoro, ecco perchè questo passaggio non andrebbe mai trascurato o sottovalutato.", immagini: ["pizza", "pizza"]),
            StepProcedimento(nome: "Lievitino", descrizione: "Prima di tutto preparate l'emulsione aromatica che è ciò determina sapore e profumo al pandoro, ecco perchè questo passaggio non andrebbe mai trascurato o sottovalutato.", immagini: ["pizza"])
        ]
        
        ricettaLista.append(Ricetta(nomePiatto: "Pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico", numeroPersone: 5, listaIngredinti: listaIngr, listastep: listaStep))
        ricettaLista.append(Ricetta(nomePiatto: "Carne", tipopiatto: "secondo", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso", numeroPersone: 3, listaIngredinti: listaIngr, listastep: listaStep))
        
        return ricettaLista
        
    }
}
