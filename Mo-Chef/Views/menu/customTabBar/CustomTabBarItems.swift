//
//  CustomTabBarItem.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import Foundation
import SwiftUI
/*
struct CustomTabBarItem: Hashable{
    
    let nomeIcona: String
    let titolo: String
    let colore: Color
    let coloreSfondo: Color
    let font: Font
}
*/
enum CustomTabBarItem: Hashable {
    
    case bilancia, categorie, home, cerca, listaSpesa
    
    var nomeIcona: String {
        switch self {
        case .bilancia: return "bilancia_img"
        case .categorie: return "categorie_img"
        case .home: return "home_img"
        case .cerca: return "cerca_img"
        case .listaSpesa: return "lista_img"
        }
    }
    
    var titolo: String {
        switch self {
        case .bilancia: return "Bilancia"
        case .categorie: return "Categorie"
        case .home: return "Home"
        case .cerca: return "Cerca"
        case .listaSpesa: return "Lista Spesa"
        }
    }
    
    var colore: Color {
        switch self {
        case .bilancia: return .white
        case .categorie: return .white
        case .home: return .white
        case .cerca: return .white
        case .listaSpesa: return .white
        }
    }
    
    var coloreSfondo: Color {
        switch self {
        case .bilancia: return .clear
        case .categorie: return .clear
        case .home: return .clear
        case .cerca: return .clear
        case .listaSpesa: return .clear
        }
    }
    
    var font: Font {
        switch self {
        case .bilancia: return Mo_ChefApp.fontTabBar
        case .categorie: return Mo_ChefApp.fontTabBar
        case .home: return Mo_ChefApp.fontTabBar
        case .cerca: return Mo_ChefApp.fontTabBar
        case .listaSpesa: return Mo_ChefApp.fontTabBar
        }
    }
}



