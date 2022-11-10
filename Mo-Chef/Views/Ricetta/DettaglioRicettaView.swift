//
//  DettaglioRicettaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 08/11/22.
//

import SwiftUI

struct DettaglioRicettaView: View {
    
    @State var ricetta: Ricetta
    
    var body: some View {
        ScrollView{
            Spacer()
            VStack{
                HStack{
                    InfoRicetta(self.ricetta.difficolta, "chef_dt_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                        .foregroundColor(.red)
                    Spacer()
                }
                HStack{
                    InfoRicetta(self.ricetta.tempoPrep, "timer_dt_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    
                    Spacer()
                }
                HStack{
                    InfoRicetta(self.ricetta.costo, "coin_dt_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    Spacer()
                }
                HStack{
                    InfoRicetta(String(self.ricetta.numeroPersone), "user_dt_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    Spacer()
                }
            }
            .padding(.leading, 30)
            Spacer()
            HStack{
                Text("Ingredienti")
                    .font(.system(size: 40, weight: .bold))
                Spacer()
            }
            listaIngredientiBox
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding(.bottom)
            HStack{
                Text("Procedimento")
                    .font(.system(size: 40, weight: .bold))
                Spacer()
            }
            .padding(.bottom, 5)
            listaStepBox()
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding(.bottom)
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
        .foregroundColor(Mo_ChefApp.verdeScuro)
    }
}

extension DettaglioRicettaView {
    
    private var listaIngredientiBox: some View {
        VStack{
            ForEach(ricetta.listaIngredienti) { ingr in
                HStack{
                    Text(ingr.nome)
                    Spacer()
                    Text(String(ingr.quantita))
                        .font(.system(size: 22, weight: .bold))
                    Text(ingr.uMisura)
                        .font(.system(size: 22, weight: .bold))
                }
                .font(.system(size: 22))
            }
            
        }
    }
    
    private func listaStepBox() -> some View {
        var paragraphStyle: NSParagraphStyle {
          let style = NSMutableParagraphStyle()
          style.alignment = .justified
          return style
        }
        return ForEach(ricetta.listaStep) { step in
            VStack{
                HStack{
                    Text(step.nome)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Mo_ChefApp.arancioneCosmo)
                    Spacer()
                }
                .padding(.bottom, 2)
                HStack{
                    Text(AttributedString(
                        step.descrizione,
                        attributes: AttributeContainer([.paragraphStyle: paragraphStyle])))
                    Spacer()
                }
                ForEach(step.immagini, id: \.self) { img in
                    Image(img)
                        .resizable()
                        .aspectRatio(1.0, contentMode: .fit)
                        .clipped()
                        .cornerRadius(5) // Inner corner radius
                        .padding(5) // Width of the border
                        .background(Mo_ChefApp.verdeScuro) // Color of the border
                        .cornerRadius(10) // Outer corner radius
                        .padding(.bottom, 10)
                }
            }
        }
            
        
    }
}
struct DettaglioRicettaView_Previews: PreviewProvider {
    static var previews: some View {
        var listaIngr: [Ingrediente] = [Ingrediente(nome: "zucchero", quantita: 23.5, uMisura: "g", isSelezionato: false)]
        let listaStep: [StepProcedimento] = [
            StepProcedimento(nome: "Lievitino", descrizione: "Prima di tutto preparate l'emulsione aromatica che è ciò determina sapore e profumo al pandoro, ecco perchè questo passaggio non andrebbe mai trascurato o sottovalutato.", immagini: ["pizza", "pizza"]),
            StepProcedimento(nome: "Lievitino", descrizione: "Prima di tutto preparate l'emulsione aromatica che è ciò determina sapore e profumo al pandoro, ecco perchè questo passaggio non andrebbe mai trascurato o sottovalutato.", immagini: ["pizza"])
        ]
        
        let count = 1...10
        for i in count { listaIngr.append(Ingrediente(nome: "farina \(i)", quantita: 23.5 * Float(i), uMisura: "g", isSelezionato: false))
        }
        
        let ricetta = Ricetta(nomePiatto: "pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico", numeroPersone: 5, listaIngredinti: listaIngr, listastep: listaStep)
        
        return DettaglioRicettaView(ricetta: ricetta)
    }
}
