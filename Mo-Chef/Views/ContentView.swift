//
//  ContentView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabIniziale: CustomTabBarItem = .home
    var body: some View {
        
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().ignoresSafeArea()
    }
}
