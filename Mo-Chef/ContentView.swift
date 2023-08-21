//
//  ContentView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabIniziale: CustomTabBarItem = .home
   // @ObservedObject private var menuModel = MenuModel()
    //@ObservedObject private var editModel = EditModel()
    @State private var opencloseMenu: Bool = false
    var body: some View {
        /*
        if menuModel.isOpenMenu{
            MenuView(menuModel: menuModel, editModel: editModel)
        } else {
         */
        NavigationView(){
            CustomTabBarContainer(tabSelezionato: $tabIniziale, coloreSfondo: Mo_ChefApp.arancioneCosmo, coloreSelezione: Mo_ChefApp.verdeScuro){
                
                BilanciaView()
                    .customTabBarItem(tab: .bilancia, tabSelect: $tabIniziale)
                CategorieView()
                    .customTabBarItem(tab: .categorie, tabSelect: $tabIniziale)
                HomeView(ricetteList: ListaRicettaModel.LISTA_RICETTE.getListaRicette())
                    .customTabBarItem(tab: .home, tabSelect: $tabIniziale)
                CercaView()
                    .customTabBarItem(tab: .cerca, tabSelect: $tabIniziale)
                ListaSpesaView()
                    .customTabBarItem(tab:.listaSpesa, tabSelect: $tabIniziale)
            }
            .navigationBarTitle("MonChef", displayMode: .large)
            .background(Mo_ChefApp.arancioneCosmo)
            /*
            .navigationBarItems(leading: Button(action: {
                // Azione del pulsante sinistro
                
            }) {
                Image(systemName: "gear")
                
            })
            */
            
            /*
            .customNavigationTitolo(Text("MonChef"))
            .customNavigationShowBackButton(false)
            .customNavigationColoreTitolo(.white)
            .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
            
            .customNavigationMenuButton(
                ButtonMenu(icona: "menu_img", coloreIcona: .white, openCloseAct: $opencloseMenu))
             */
            //.customNavigationAddButton(ButtonAdd(push: $createRicetta, icona: "plus-29", coloreIcona: .white))
            //NavigationLink(destination: MenuView(), isActive: $opencloseMenu, label: {EmptyView()})
            //
        }
       // }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().ignoresSafeArea()
    }
}


/*
 
 */
