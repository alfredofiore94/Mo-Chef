//
//  Fase2AddRicettaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 02/03/23.
//

import SwiftUI

struct Fase2AddRicettaView: View {
    
    @State var ricetta: Ricetta

    var body: some View {
            ZStack{
                Color.white
                VStack{
                    strutturaFase
                    CustomNavLink(destinazione: Fase3AddRicettaView(ricetta: ricetta)
                        .customNavigationTitolo(Text(ricetta.nomePiatto))
                        .customNavigationShowBackButton(true)
                                  
                    ){
                        NextBtnView(icona: "right_arrow", coloreIcona: Mo_ChefApp.arancioneCosmo)
                            .padding(.vertical)
                            .disabled(true)
                        
                    }
                    .customNavigationTitolo(
                        Text(ricetta.nomePiatto))
                    .customNavigationShowBackButton(false)
                    .customNavigationColoreTitolo(.white)
                    .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
                    
                }
            }
        }
    }

    extension Fase2AddRicettaView {
        var strutturaFase: some View {
            
            VStack{
               /* Spacer()
                    .padding()*/
                BoxIngredientiView(titolo: "INGREDIENTI", listaIngredienti: ricetta.listaIngredienti)
                /*
                Spacer()
                    .padding()*/
            }
        }
    }

struct Fase2AddRicettaView_Previews: PreviewProvider {
    
    @State static var ricetta: Ricetta = Ricetta(nomePiatto: "", tipopiatto: "", difficolta: "", tempoPrep: "", costo: "", numeroPersone: nil, listaIngredinti: [], listastep: [], presentazione: "")
    
    static var previews: some View {
        Fase2AddRicettaView(ricetta: ricetta)
    }
}
