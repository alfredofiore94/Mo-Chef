//
//  ContentView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabIniziale: CustomTabBarItem = .home
    @ObservedObject private var menuModel = MenuModel()

    var body: some View {
        if menuModel.isOpenMenu{
            MenuView(menuModel: menuModel)
        } else {
            CustomNavView(){
                CustomNavLink(destinazione: Text("me ne sono andato")
                    .customNavigationTitolo(Text("ora siam qua"))
                    .customNavigationEditButton(ButtonEdit())
                ){
                    CustomTabBarContainer(tabSelezionato: $tabIniziale, coloreSfondo: Mo_ChefApp.arancioneCosmo, coloreSelezione: Mo_ChefApp.verdeScuro){
                        
                        BilanciaView()
                            .customTabBarItem(tab: .bilancia, tabSelect: $tabIniziale)
                        CategorieView()
                            .customTabBarItem(tab: .categorie, tabSelect: $tabIniziale)
                        HomeView()
                            .customTabBarItem(tab: .home, tabSelect: $tabIniziale)
                        CercaView()
                            .customTabBarItem(tab: .cerca, tabSelect: $tabIniziale)
                        ListaSpesaView()
                            .customTabBarItem(tab:.listaSpesa, tabSelect: $tabIniziale)
                    }
                }
                .customNavigationTitolo(Text("Eccoci qua").foregroundColor(.green))
                .customNavigationShowBackButton(false)
                .customNavigationColoreTitolo(.red)
                .customNavigationColoreSfondo(.white)
                
                .customNavigationMenuButton(ButtonMenu(menuModel: menuModel, nomeMenu: "Menù")
                    
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().ignoresSafeArea()
    }
}


/*
 
 */
