//
//  HomeView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var menuModel = MenuModel()
    @ObservedObject var editModel = EditModel()
    @State var ricetteList: [Ricetta]
    @State private var createRicetta = false

    var body: some View {
        // Home main page
        if !createRicetta{
            CustomNavView(){
                ZStack{
                    Color.white
                    ScrollView{
                        VStack{
                            ForEach(ricetteList){ ricetta in
                                CustomNavLink(destinazione: DettaglioRicettaView(ricetta: ricetta)
                                    .customNavigationTitolo(Text(ricetta.nomePiatto).font(.system(size: 30, weight: .bold))
                                                           )
                                        .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
                                        .customNavigationColoreTitolo(.white)
                                        .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
                                ){
                                    RicettaCardView(ricetta: ricetta)
                                }
                                .customNavigationTitolo(Text("MonChef")
                                                        
                                )
                                .customNavigationShowBackButton(false)
                                .customNavigationColoreTitolo(.white)
                                .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
                                
                                .customNavigationMenuButton(ButtonMenu(menuModel: menuModel, icona: "menu_img", coloreIcona: .white)
                                )
                                .customNavigationAddButton(ButtonAdd(push: $createRicetta, icona: "plus-29", coloreIcona: .white))
                            }
                        }
                    }
                }
            }.transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
        }
        // Add view redirect
        if createRicetta {
            AddRicettaView().transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        return HomeView(ricetteList: DataTest.getDataTest())
    }
}
