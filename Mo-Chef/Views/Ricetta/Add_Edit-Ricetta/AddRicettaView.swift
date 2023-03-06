//
//  AddRicettaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 16/11/22.
//

import SwiftUI

struct AddRicettaView: View {
    
    @State var ricetta: Ricetta = Ricetta(listaIngredinti: [Ingrediente(nome: "bresaula", quantita: "2.50", uMisura: "g", isSelezionato: false),
        Ingrediente(nome: "bresaula", quantita: "2.50", uMisura: "g", isSelezionato: false)])
    var body: some View {
        
        Fase1AddRicettaView(ricetta: ricetta)
        
    }
}

struct AddRicettaView_Previews: PreviewProvider {
    static var previews: some View {
        AddRicettaView()
    }
}
