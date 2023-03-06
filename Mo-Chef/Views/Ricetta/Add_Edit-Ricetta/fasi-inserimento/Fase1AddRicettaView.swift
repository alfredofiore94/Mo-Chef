//
//  Fase1AddRicettaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 16/11/22.
//

import SwiftUI

struct Fase1AddRicettaView: View {
    
    @State var ricetta: Ricetta
    var body: some View {
        CustomNavView(){
            ZStack{
                Color.white
                VStack{
                    strutturaFase
                    CustomNavLink(destinazione:
                                    Fase2AddRicettaView(ricetta: ricetta)
                        .customNavigationTitolo(Text(ricetta.nomePiatto))
                        .customNavigationShowBackButton(true)
                    ){
                        NextBtnView(icona: "right_arrow", coloreIcona: Mo_ChefApp.arancioneCosmo)
                            .padding(.vertical)
                    }
                    .customNavigationTitolo(
                        titoloPrincipale)
                    .customNavigationShowBackButton(false)
                    .customNavigationColoreTitolo(.white)
                    .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
                }
            }
        }
    }
}

extension Fase1AddRicettaView {
    var strutturaFase: some View {
        VStack{
            Spacer()
            CampoInserimentoView(valore: $ricetta.nomePiatto, titoloCampo: "TITOLO RICETTA", limitChar: 20, placeholder: "inserire il titolo")
                .padding(.vertical)
            AreaInserimentoView(valore: $ricetta.presentazione, titoloCampo: "PRESENTAZIONE", limitChar: 150, placeholder: "inserire una piccola descrizione del piatto")
                .padding(.vertical)
            Spacer()
            
        }
    }
    
    var titoloPrincipale: Text {
        
        if(ricetta.nomePiatto == ""){
            return Text("Nuova Ricetta")
        }
        return Text(ricetta.nomePiatto)
    }
}

struct Fase1AddRicettaView_Previews: PreviewProvider {
    
    @State static var ricetta: Ricetta = Ricetta(nomePiatto: "", tipopiatto: "", difficolta: "", tempoPrep: "", costo: "", numeroPersone: nil, listaIngredinti: [], listastep: [], presentazione: "")
    
    static var previews: some View {
    
        Fase1AddRicettaView(ricetta: ricetta)
    }
}
