//
//  Fase1AddRicettaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 16/11/22.
//

import SwiftUI

struct Fase1AddRicettaView: View {
    
    @State var ricetta: Ricetta = Ricetta(nomePiatto: "Nuova Ricetta", tipopiatto: "", difficolta: "", tempoPrep: "", costo: "", numeroPersone: 0, listaIngredinti: [], listastep: [], presentazione: "")
    
    var body: some View {
        CustomNavView(){
            VStack{
                strutturaFase
                CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                    .customNavigationTitolo(Text("ora siam qua"))
                              
                ){
                    NextBtnView(icona: "right_arrow", coloreIcona: Mo_ChefApp.arancioneCosmo)
                        .padding(.top)
                    
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

extension Fase1AddRicettaView {
    var strutturaFase: some View {
        ScrollView{
           
            CampoInserimentoView(valore: "", titoloCampo: "TITOLO RICETTA", limitChar: 20, placeholder: "inserire il titolo")
                .padding(.vertical)
            AreaInserimentoView(valore: "", titoloCampo: "PRESENTAZIONE", limitChar: 50, placeholder: "inserire una piccola descrizione del piatto")
                .padding(.vertical)
            BoxIngredientiView(titolo: "INGREDIENTI", listaIngredienti: ricetta.listaIngredienti)
            
        }
    }
}

struct Fase1AddRicettaView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
    
        Fase1AddRicettaView()
    }
}
