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
                    InfoRicetta(self.ricetta.difficolta, "chef_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                        .foregroundColor(.red)
                    Spacer()
                }
                HStack{
                    InfoRicetta(self.ricetta.tempoPrep, "timer_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    
                    Spacer()
                }
                HStack{
                    InfoRicetta(self.ricetta.costo, "coin_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    Spacer()
                }
                HStack{
                    InfoRicetta(String(self.ricetta.numeroPersone), "user_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
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
                    Text(ingr.uMisura)
                }
                .font(.system(size: 22))
            }
            
        }
    }
    
    
}
struct DettaglioRicettaView_Previews: PreviewProvider {
    static var previews: some View {
        var listaIngr: [Ingrediente] = [Ingrediente(nome: "zucchero", quantita: 23.5, uMisura: "g", isSelezionato: false)]
        
        let count = 1...10
        for i in count { listaIngr.append(Ingrediente(nome: "farina \(i)", quantita: 23.5 * Float(i), uMisura: "g", isSelezionato: false))
        }
        
        let ricetta = Ricetta(nomePiatto: "pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico", numeroPersone: 5, listaIngredinti: listaIngr)
        
        return DettaglioRicettaView(ricetta: ricetta)
    }
}
