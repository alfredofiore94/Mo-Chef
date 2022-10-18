//
//  ContentView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelezionato: CustomTabBarItem = CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.white.opacity(0), font: Mo_ChefApp.fontTabBar)
    var body: some View {
        
        CustomTabBarContainer(tabSelezionato: $tabSelezionato, coloreSfondo: Mo_ChefApp.arancioneCosmo, coloreSelezione: Color.blue){
            
            BilanciaView()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "bilancia_img", titolo: "Bilancia", colore: Color.white, coloreSfondo: Color.clear, font: Mo_ChefApp.fontTabBar), tabSelect: $tabSelezionato)
            CategorieView()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "categorie_img", titolo: "Categorie", colore: Color.white, coloreSfondo: Color.clear, font: Mo_ChefApp.fontTabBar), tabSelect: $tabSelezionato)
            HomeView()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.clear, font: Mo_ChefApp.fontTabBar), tabSelect: $tabSelezionato)
            CercaView()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "cerca_img", titolo: "Cerca", colore: Color.white,  coloreSfondo: Color.clear, font: Mo_ChefApp.fontTabBar), tabSelect: $tabSelezionato)
            ListaSpesaView()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "lista_img", titolo: "Lista Spesa", colore: Color.white,  coloreSfondo: Color.clear, font: Mo_ChefApp.fontTabBar), tabSelect: $tabSelezionato)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
