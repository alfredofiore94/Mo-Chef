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
    @State var showAddEditIngr: Bool = false
    
    var body: some View {
        VStack{
            Text(titolo)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            ZStack{
                VStack{
                    HStack{
                        Text(String(listaIngredienti.count))
                            .font(.system(size: 25, weight: .bold))
                        Text("ingredienti inseriti")
                    }.padding(.top)
                        .foregroundColor(Mo_ChefApp.verdeScuro)
                    VStack{
                        listaIngr
                        Spacer()
                    }
                    .background(.white)
                    .padding(.horizontal, 35)
                    .padding(.vertical)
                    ZStack{
                        Button(action: {
                            showAddEditIngr.toggle()
                        }, label: {
                            NextBtnView(icona: "plus-40", coloreIcona: Mo_ChefApp.arancioneCosmo)
                                .padding(.bottom)
                        })
                        .fullScreenCover(isPresented: $showAddEditIngr, content: {
                            AddEditIngredienteView( isEditMode: true)
                                
                        })
                    }
                }
                .foregroundColor(Mo_ChefApp.arancioneCosmo)
                .background(.white)
                RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 5.0))
                   // .frame(minHeight: 30)
                    .padding(.horizontal, 25)
            }
        }
        .background(.white)
    }
}

extension BoxIngredientiView {
    
    var listaIngr: some View {
        List {
            
            ForEach(listaIngredienti, id: \.self) { ingrediente in
               HStack {
                   Text(ingrediente.nome)
                       .font(.headline)
                       .lineLimit(1)
                       .truncationMode(.tail)
                   Spacer()
                   
                   Text(ingrediente.quantita)
                   Text(ingrediente.uMisura)
               }
               .listRowBackground(Color.white)
               .contentShape(Rectangle())
               .swipeActions(edge: .trailing, content: {
                   Button(role: .destructive, action: {
                       removeItem(ingrediente)
                   }, label: {
                       Label("Elimina", systemImage: "trash")
                   })
               })
            }
       }
        
        .padding(.vertical, 10)
        .listStyle(PlainListStyle())
        .background(.white)

    }
    
    func removeItem(_ item: Ingrediente) {
        if let index = listaIngredienti.firstIndex(of: item) {
            listaIngredienti.remove(at: index)
        }
    }
}

struct BoxIngredientiView_Previews: PreviewProvider {
    static var previews: some View {
        let listaIngr: [Ingrediente] = [
            Ingrediente(nome: "bresaula", quantita: "2.50", uMisura: "g", isSelezionato: false),
            
            Ingrediente(nome: "bresaula", quantita: "2.50", uMisura: "g", isSelezionato: false)
        ]
        VStack{
            Spacer()
                .padding()
            BoxIngredientiView(titolo: "Ingredienti", listaIngredienti: listaIngr)
            Spacer()
                .padding()
        }
    }
}
