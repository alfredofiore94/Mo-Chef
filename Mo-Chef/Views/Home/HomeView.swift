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


    var body: some View {
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
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        return HomeView(ricetteList: DataTest.getDataTest())
    }
}
