//
//  AddEditIngredienteView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 26/01/23.
//

import SwiftUI

struct AddEditIngredienteView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var ingrediente: Ingrediente = Ingrediente()
    @State var showDeleteMex: Bool = false
    
    var isEditMode: Bool = false
    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.5)
                .background(BackgroundClearView())
                .ignoresSafeArea()
            ZStack{
                RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 5.0))
                    
                    .background(.white)
                    .cornerRadius(8) // Inner corner radius
                VStack{
                    HStack{
                        Spacer()
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        },
                            label: {CloseButton()}
                        )
                    }
                    Spacer()
                    CampoInserimentoView(valore: $ingrediente.nome, titoloCampo: "nome", limitChar: 20, placeholder: "inserire tempo preparazione", fontTitleSize: 20)
                        .multilineTextAlignment(.center)
                    HStack(alignment: .bottom){
                        CampoInserimentoNumericoView(valore: $ingrediente.quantita, titoloCampo: "quantità", limitChar: 20, placeholder: "inserire tempo preparazione", fontTitleSize: 20)
                            .padding(.vertical)
                            .padding(.trailing, -30)
                            .multilineTextAlignment(.center)
                        PickerInserimentoView(valoreSelezionato: $ingrediente.uMisura, titoloCampo: "unità \n misura", placeholder: "Seleziona Costo", pickerDataset: PickerData.tipologieUnitaMisura, fontTitleSize: 20)
                            .padding(.vertical)
                            .multilineTextAlignment(.center)
                            .padding(.leading, -30)
                    }
                    // button Elimina
                    if (isEditMode){
                        Button(action: {
                            showDeleteMex.toggle()
                        }, label: {
                            TextBtnView(label: "Elimina", coloreIcona: Mo_ChefApp.arancioneCosmo, width: 40)
                        })
                        .padding(.bottom)
                        .fullScreenCover(isPresented:  $showDeleteMex, content: {
                            DeleteIngredienteView(ingrediente: ingrediente, mex: "Elimina ingrediente ?", modaleAddEdit: presentationMode)
                                
                        })
                    }
                    Button(action: {

                    }, label: {
                        NextBtnView(icona: "circle_check_solid_60", coloreIcona: Mo_ChefApp.arancioneCosmo)
                            .padding(.bottom)
                    })
                }
            }
            .frame(height: 400)
            .padding(.horizontal, 25)
        }
    }  

}

struct AddEditIngredienteView_Previews: PreviewProvider {
    static var previews: some View {
        AddEditIngredienteView(ingrediente: DataTest.getDataTest()[0].listaIngredienti[0], isEditMode: true)
    }
}
