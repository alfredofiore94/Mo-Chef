//
//  DeleteIngredienteView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 30/01/23.
//

import SwiftUI

struct DeleteIngredienteView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var ingrediente: Ingrediente
    var mex: String
    var fontTitleSize: CGFloat = 25
    var modaleAddEdit: Binding<PresentationMode>? = nil

    var body: some View {
        ZStack{
            Color.gray.opacity(0.5)
                .background(BackgroundClearView())
                .ignoresSafeArea()
            ZStack{
                RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 5.0))
                    
                    .background(.white)
                    .cornerRadius(8) // Inner corner radius
                VStack {
                    HStack{
                        Spacer()
                        Button(action: {presentationMode.wrappedValue.dismiss()
                        },
                            label: {
                            CloseButton()
                            
                        })
                    }
                    Text(mex)
                        .font(.system(size: fontTitleSize, weight: .bold))
                        .foregroundColor(Mo_ChefApp.verdeScuro)
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                    HStack{
                        //Annulla
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            NextBtnView(icona: "circle_cancel_solid_60", coloreIcona: Mo_ChefApp.arancioneCosmo)
                                .padding(.bottom)
                        })
                        Spacer()
                        //Conferma
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                            modaleAddEdit?.wrappedValue.dismiss()
                        }, label: {
                            NextBtnView(icona: "circle_check_solid_60", coloreIcona: Mo_ChefApp.arancioneCosmo)
                                .padding(.bottom)
                        })
                    }.padding(.horizontal, 100)
                    Spacer()
                }
            }
            .frame(height: 250)
            .padding(.horizontal, 25)
        }
    }  
    
}

struct DeleteIngredienteView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteIngredienteView( ingrediente: DataTest.getDataTest()[0].listaIngredienti[0], mex: "Sicuro di voler eliminare l'ingrediente ?")
    }
}
