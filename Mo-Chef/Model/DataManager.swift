//
//  DataManager.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 23/01/23.
//

import Foundation

class ListaRicettaModel: ObservableObject {
        
    @Published var items: [Ricetta] = []
    
    let DEV_MODE_ENABLED = true
    
    private init() {
    }

    
    func getListaRicette() -> [Ricetta] {
        
        if(DEV_MODE_ENABLED){
            items.append(contentsOf: DataTest.getDataTest())
        }
        
        return items
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveltem(from: IndexSet, to: Int) {
        items.move (fromOffsets: from, toOffset: to)
    }
    // Singleton
    static var LISTA_RICETTE = ListaRicettaModel()
}

class PickerData {
    static var tipologiePietanze = ["ANTIPASTO","PRIMO", "SECONDO", "CONTORNO", "DOLCE"]
    
    static var tipologieCosti = ["Molto economico", "Economico", "Medio", "Costoso", "Molto costoso"]
    
    static var tipologieDifficolta = ["Molto facile", "Facile", "Medio", "Difficile", "Molto difficile"]
}


struct DataTest {
    static func getDataTest() -> [Ricetta]{
        var ricettaLista: [Ricetta] = []
        
        var listaIngr: [Ingrediente] = [Ingrediente(nome: "zucchero", quantita: 23.5, uMisura: "g", isSelezionato: false)]
        let presentazione = "Piccolo testo di presentazione del piatto. Si può descrivere la storia del piatto o altre introduzioni, come ‘un piatto simbolo dell’Italia"
        let count = 1...10
        for _ in count { listaIngr.append(Ingrediente(nome: "farina", quantita: 23.5, uMisura: "g", isSelezionato: false))
        }
        
        let listaStep: [StepProcedimento] = [
            StepProcedimento(nome: "Lievitino", descrizione: "Prima di tutto preparate l'emulsione aromatica che è ciò determina sapore e profumo al pandoro, ecco perchè questo passaggio non andrebbe mai trascurato o sottovalutato.", immagini: ["pizza", "pizza"]),
            StepProcedimento(nome: "Lievitino", descrizione: "Prima di tutto preparate l'emulsione aromatica che è ciò determina sapore e profumo al pandoro, ecco perchè questo passaggio non andrebbe mai trascurato o sottovalutato.", immagini: ["pizza"])
        ]
        
        ricettaLista.append(Ricetta(nomePiatto: "Pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico", numeroPersone: 5, listaIngredinti: listaIngr, listastep: listaStep, presentazione: presentazione))
        ricettaLista.append(Ricetta(nomePiatto: "Carne", tipopiatto: "secondo", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso", numeroPersone: 3, listaIngredinti: listaIngr, listastep: listaStep, presentazione: presentazione))
        ricettaLista.append(Ricetta(nomePiatto: "Cavatelli al sugo di cinghiale", tipopiatto: "secondo", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso", numeroPersone: 3, listaIngredinti: listaIngr, listastep: listaStep, presentazione: presentazione))
        
        return ricettaLista
        
    }
}
