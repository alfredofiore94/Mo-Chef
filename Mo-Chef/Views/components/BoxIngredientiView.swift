//
//  BoxIngredientiView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 20/01/23.
//

import SwiftUI

struct BoxIngredientiView: View {
    
    @State var titolo: String
    @State var listaIngredienti: [Ingrediente]
    
    var body: some View {
        VStack{
            Text(titolo)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            ZStack{
                RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 5.0))
                    .frame(minHeight: 300)
                    .padding(.horizontal, 25)
                VStack{
                    HStack{
                        Text(String(listaIngredienti.count))
                            .font(.system(size: 25, weight: .bold))
                        Text("ingredienti inseriti")
                    }.padding(.top)
                        .foregroundColor(Mo_ChefApp.verdeScuro)
                    ScrollView{
                        listaIngr
                        Spacer()
                            .frame(minHeight: 40)
                    }
                    .padding(.horizontal, 75)
                    .padding(.vertical)
                    NextBtnView(icona: "plus-40", coloreIcona: Mo_ChefApp.arancioneCosmo)
                        .padding(.bottom)
                }
                .foregroundColor(Mo_ChefApp.arancioneCosmo)
            }
        }
    }
}

extension BoxIngredientiView {
    
    var listaIngr: some View {
        ForEach(listaIngredienti) { ingrediente in
            HStack{
                Text(ingrediente.nome)
                Spacer()
                Text(String(ingrediente.quantita) + "")
                Text(ingrediente.uMisura)
                    .padding(.trailing)
            }
            .padding(.vertical, 5)
            Divider()
                .padding(.trailing)
        }
            
        
    }
}

struct BoxIngredientiView_Previews: PreviewProvider {
    static var previews: some View {
        var listaIngr: [Ingrediente] = [
            Ingrediente(nome: "bresaula", quantita: 2.50, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "bresaula", quantita: 2.50, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "pepe", quantita: 23.5, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "bresaula", quantita: 2.50, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "pepe", quantita: 23.5, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "bresaula", quantita: 2.50, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "pepe", quantita: 23.5, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "bresaula", quantita: 2.50, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "pepe", quantita: 23.5, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "bresaula", quantita: 2.50, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "pepe", quantita: 23.5, uMisura: "g", isSelezionato: false),
            Ingrediente(nome: "bresaula", quantita: 2.50, uMisura: "g", isSelezionato: false)]
        VStack{
            Spacer()
                .padding()
            BoxIngredientiView(titolo: "Ingredienti", listaIngredienti: listaIngr)
            Spacer()
                .padding()
        }
    }
}