//
//  Fase2AddRicettaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 24/01/23.
//

import SwiftUI

struct Fase2AddRicettaView: View {
    
    @State var ricetta: Ricetta
    
    var body: some View {
        VStack{
            strutturaFase
            CustomNavLink(destinazione:
                            Text("me ne sono andato").foregroundColor(.red)
                
                
                          
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

extension Fase2AddRicettaView {
    var strutturaFase: some View {
        
        ScrollView{
           
            PickerInserimentoView(valoreSelezionato: $ricetta.tipoPiatto, titoloCampo: "TIPO PIETANZA", placeholder: "Seleziona Tipo Pietanza", pickerDataset: PickerData.tipologiePietanze)
                .padding(.vertical)
            PickerInserimentoView(valoreSelezionato: $ricetta.difficolta, titoloCampo: "DIFFICOLTA'", placeholder: "Seleziona difficoltà", pickerDataset: PickerData.tipologieDifficolta)
                .padding(.vertical)
            
            CampoInserimentoView(valore: $ricetta.tempoPrep, titoloCampo: "TEMPO PREPARAZIONE", limitChar: 20, placeholder: "inserire tempo preparazione")
                .padding(.vertical)
            
            PickerInserimentoView(valoreSelezionato: $ricetta.costo, titoloCampo: "COSTO", placeholder: "Seleziona Costo", pickerDataset: PickerData.tipologieCosti)
                .padding(.vertical)
            CampoInserimentoPersoneView(valore: $ricetta.numeroPersone, titoloCampo: "N° PERSONE", placeholder: "inserire numero persone")
                .padding(.vertical)
            Spacer()
            
            
        }
    }
}

struct Fase2AddRicettaView_Previews: PreviewProvider {
    
    @State static var ricetta: Ricetta = Ricetta(nomePiatto: "Nuova Ricetta", tipopiatto: "", difficolta: "", tempoPrep: "", costo: "", numeroPersone: nil, listaIngredinti: [], listastep: [], presentazione: "")
    static var previews: some View {
        
        Fase2AddRicettaView(ricetta: ricetta)
    }
}
