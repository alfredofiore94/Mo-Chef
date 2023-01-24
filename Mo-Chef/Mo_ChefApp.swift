//
//  Mo_ChefApp.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

@main
struct Mo_ChefApp: App {
    
    @StateObject var listaRicette: ListaRicettaModel = ListaRicettaModel()
    
    static let arancioneCosmo: Color = Color(red: 239 / 255, green: 128 / 255, blue: 74 / 255)
    
    static let verdeScuro: Color = Color(red: 58 / 255, green: 173 / 255, blue: 168 / 255)
    static let verdeSelezione: Color = Color(red: 114 / 255, green: 223 / 255, blue: 217 / 255)

    
    static let fontTabBar: Font = Font.custom("SF Pro Text", size: 15)

    var body: some Scene {
        WindowGroup {
            ContentView().ignoresSafeArea()
                .environmentObject(listaRicette)
        }
    }
}
