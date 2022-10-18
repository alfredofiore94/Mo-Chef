//
//  CustomTabBarContainer.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct CustomTabBarContainer<Content:View>: View {
    
    @Binding var tabSelezionato: CustomTabBarItem
    let contenuto: Content
    
    @State private var tabs: [CustomTabBarItem] = []
    var coloreSfondo: Color
    var coloreSelezione: Color 
    
    init(tabSelezionato: Binding<CustomTabBarItem>, coloreSfondo: Color, coloreSelezione: Color, @ViewBuilder contenuto: () -> Content){
        self._tabSelezionato = tabSelezionato
        self.contenuto = contenuto()
        self.coloreSfondo = coloreSfondo
        self.coloreSelezione = coloreSelezione
    }

    
    var body: some View {
        VStack (spacing: 0){
            ZStack{
                contenuto
            }
            CustomTabBar(listaTabs: tabs, tabSelezionato: $tabSelezionato, coloreSfondo: coloreSfondo, coloreSelezione: coloreSelezione)

        }
        
        .onPreferenceChange(CustomTabBarItemsPreferenceKey.self, perform: { value in self.tabs = value })
        
    }
}
/*
struct CustomMainTabBarContainer_Previews: PreviewProvider {
    
    let coloreSfondo: Color = Color(red: 227 / 255, green: 124 / 255, blue: 81 / 255)
    let coloreSelezione: Color = Color.blue
    
    static let tabs: [CustomTabBarItem] = [
        CustomTabBarItem(nomeIcona: "bilancia_img", titolo: "Bilancia", colore: Color.white, coloreSfondo: Color.white.opacity(0), font: Mo_ChefApp.fontTabBar),
        CustomTabBarItem(nomeIcona: "categorie_img", titolo: "Categorie", colore: Color.white, coloreSfondo: Color.white.opacity(0), font: Mo_ChefApp.fontTabBar),
        CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.white.opacity(0), font: Mo_ChefApp.fontTabBar),
        CustomTabBarItem(nomeIcona: "cerca_img", titolo: "Cerca", colore: Color.white,  coloreSfondo: Color.clear, font: Mo_ChefApp.fontTabBar)
    ]
    
    static var previews: some View {
        CustomTabBarContainer(tabSelezionato: .constant(tabs[2]), coloreSfondo: Mo_ChefApp.arancioneCosmo, coloreSelezione:  Mo_ChefApp.verdeScuro){
            Color.blue
        }
    }
}
*/
