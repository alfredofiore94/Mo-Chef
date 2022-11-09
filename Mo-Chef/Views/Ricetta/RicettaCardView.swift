//
//  RicettaCardView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 08/11/22.
//

import SwiftUI

struct RicettaCardView: View {
    @State var ricetta: Ricetta
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                
                .stroke(Mo_ChefApp.verdeScuro, lineWidth: 5)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
            HStack(alignment: .top){
                VStack (alignment: .leading){
                    Text(self.ricetta.tipoPiatto)
                        .font(.system(size: 18))
                    Text(self.ricetta.nomePiatto)
                        .padding(.leading)
                        .padding(.bottom)
                        .padding(.top)
                        .font(.system(size: 30))
                   
                }
                .padding()
                Spacer()
                VStack(alignment: .leading){

                    InfoRicetta(self.ricetta.difficolta, "chef_img")
                    InfoRicetta(self.ricetta.tempoPrep, "timer_img")
                    InfoRicetta(self.ricetta.costo, "coin_img")

                    
                }
                .font(.system(size: 12))
                .padding(.trailing, 50)
                .padding(.top, 40)
                
            }
            
        }
        
        .frame(width: .infinity, height: 150)
        .padding(20)
        .foregroundColor(Mo_ChefApp.verdeScuro)
        .font(.custom("SF Pro Text", size: 15))
        
    }
}

struct InfoRicetta: View {
    
    var nome: String
    var immagine: String
    var coloreNome: Color?
    var coloreIcona: Color?

    init(_ nome: String, _ immagine: String,  coloreNome: Color? = Mo_ChefApp.verdeScuro ,  coloreIcona: Color? = Mo_ChefApp.verdeScuro) {
        self.nome = nome
        self.immagine = immagine
        self.coloreNome = coloreNome
        self.coloreIcona = coloreIcona

    }

    var body: some View {
        HStack{
            Image(immagine)
                .renderingMode(.template)
                .foregroundColor(coloreIcona)
            Text(nome)
                .foregroundColor(coloreNome)

        }
    }
}

struct RicettaCard_Previews: PreviewProvider {
    static var previews: some View {
        
        var listaIngr: [Ingrediente] = [Ingrediente(nome: "zucchero", quantita: 23.5, uMisura: "g", isSelezionato: false)]
        
        var listaStep: [StepProcedimento] = [
            StepProcedimento(nome: "Lievitino", descrizione: "Prima di tutto preparate l'emulsione aromatica che è ciò determina sapore e profumo al pandoro, ecco perchè questo passaggio non andrebbe mai trascurato o sottovalutato.", immagini: ["pizza_img", "pizza_img"]),
            StepProcedimento(nome: "Lievitino", descrizione: "Prima di tutto preparate l'emulsione aromatica che è ciò determina sapore e profumo al pandoro, ecco perchè questo passaggio non andrebbe mai trascurato o sottovalutato.", immagini: ["pizza_img"])
        ]
        
        let count = 1...10
        
        for _ in count { listaIngr.append(Ingrediente(nome: "farina", quantita: 23.5, uMisura: "g", isSelezionato: false))
        }
        
        let ricettaTmp = Ricetta(nomePiatto: "Pandoro", tipopiatto: "Dolce", difficolta: "Media", tempoPrep: "48 ore", costo: "16,50€", numeroPersone: 5, listaIngredinti: listaIngr, listastep: listaStep)
        
        return RicettaCardView(ricetta: ricettaTmp)

        
        
    }
}
