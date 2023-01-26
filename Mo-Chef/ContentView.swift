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
    @ObservedObject private var editModel = EditModel()

    var body: some View {
        if menuModel.isOpenMenu{
            MenuView(menuModel: menuModel, editModel: editModel)
        } else {
            CustomTabBarContainer(tabSelezionato: $tabIniziale, coloreSfondo: Mo_ChefApp.arancioneCosmo, coloreSelezione: Mo_ChefApp.verdeScuro){
                
                BilanciaView(menuModel: menuModel)
                    .customTabBarItem(tab: .bilancia, tabSelect: $tabIniziale)
                CategorieView(menuModel: menuModel)
                    .customTabBarItem(tab: .categorie, tabSelect: $tabIniziale)
                HomeView(menuModel: menuModel, ricetteList: ListaRicettaModel.LISTA_RICETTE.getListaRicette())
                    .customTabBarItem(tab: .home, tabSelect: $tabIniziale)
                CercaView(menuModel: menuModel)
                    .customTabBarItem(tab: .cerca, tabSelect: $tabIniziale)
                ListaSpesaView(menuModel: menuModel)
                    .customTabBarItem(tab:.listaSpesa, tabSelect: $tabIniziale)
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
