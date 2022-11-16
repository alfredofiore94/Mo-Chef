//
//  CustomNavBarPreferenceKeys.swift
//  CookMo
//
//  Created by Alfredo Fiore on 08/09/22.
//

import Foundation
import SwiftUI


// TITOLO
struct CustomNavBarTitoloPreferenceKey: PreferenceKey{
    
    static var defaultValue: Text = Text("")
    
    static func reduce(value: inout Text, nextValue: () -> Text) {
        value = nextValue()
    }
}
// COLORE SFONDO
struct CustomNavBarColoreSfondoPreferenceKey: PreferenceKey{
    
    static var defaultValue: Color = Color.blue
    
    static func reduce(value: inout Color, nextValue: () -> Color) {
        value = nextValue()
    }
}
// COLORE GENERALE TESTI
struct CustomNavBarColoreTestiPreferenceKey: PreferenceKey{
    
    static var defaultValue: Color = Color.white
    
    static func reduce(value: inout Color, nextValue: () -> Color) {
        value = nextValue()
    }
}

///////////////////////////////////////////////////////////////  PROPRIETA' OPZIONALI  //////////////////////////////////////////////////////////////////////////////

//SOTTOTITOLO
struct CustomNavBarSottotitoloPreferenceKey: PreferenceKey{
    
    static var defaultValue: String? = nil
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}
// COLORE TITOLO
struct CustomNavBarColoreTitoloPreferenceKey: PreferenceKey{
    
    static var defaultValue: Color? = nil
    
    static func reduce(value: inout Color?, nextValue: () -> Color?) {
        value = nextValue()
    }
}
// COLORE SOTTOTITOLO
struct CustomNavBarColoreSottotitoloPreferenceKey: PreferenceKey{
    
    static var defaultValue: Color? = nil
    
    static func reduce(value: inout Color?, nextValue: () -> Color?) {
        value = nextValue()
    }
}
// COLORE BACK BUTTON E NEXT BUTTON
struct CustomNavBarColoreBackButtonPreferenceKey: PreferenceKey{
    
    static var defaultValue: Color? = nil
    
    static func reduce(value: inout Color?, nextValue: () -> Color?) {
        value = nextValue()
    }
}
// MOSTRA BACK BUTTON
struct CustomNavBarShowBackButtonPreferenceKey: PreferenceKey{
    
    static var defaultValue: Bool = true
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}
/*
// MOSTRA NEXT BUTTON
struct CustomNavBarShowNextButtonPreferenceKey: PreferenceKey{
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}
*/
//EDIT BUTTON
struct CustomNavBarEditButtonPreferenceKey: PreferenceKey{
    
    static var defaultValue: ButtonEdit? = nil
    
    static func reduce(value: inout ButtonEdit?, nextValue: () -> ButtonEdit?) {
        value = nextValue()
    }
}
//MENU BUTTON
struct CustomNavBarMenuButtonPreferenceKey: PreferenceKey{
    
    static var defaultValue: ButtonMenu? = nil
    
    static func reduce(value: inout ButtonMenu?, nextValue: () -> ButtonMenu?) {
        value = nextValue()
    }
}

//ADD BUTTON
struct CustomNavBarAddButtonPreferenceKey: PreferenceKey{
    
    static var defaultValue: ButtonAdd? = nil
    
    static func reduce(value: inout ButtonAdd?, nextValue: () -> ButtonAdd?) {
        value = nextValue()
    }
}

extension View {
    // TITOLO
    func customNavigationTitolo(_ titolo: Text) -> some View{
        preference(key: CustomNavBarTitoloPreferenceKey.self, value: titolo)
    }
    // COLORE SFONDO
    func customNavigationColoreSfondo(_ coloreSfondo: Color) -> some View{
        preference(key: CustomNavBarColoreSfondoPreferenceKey.self, value: coloreSfondo)
    }
    // COLORE TESTI
    func customNavigationColoreTesti(_ coloreTesti: Color) -> some View{
        preference(key: CustomNavBarColoreTestiPreferenceKey.self, value: coloreTesti)
    }
    
    // COLORE TITOLO (opzionale)
    func customNavigationColoreTitolo(_ coloreTitolo: Color?) -> some View{
        preference(key: CustomNavBarColoreTitoloPreferenceKey.self, value: coloreTitolo)
    }
    // SOTTOTITOLO (opzionale)
    func customNavigationSottotitolo(_ sottotitolo: String?) -> some View{
        preference(key: CustomNavBarSottotitoloPreferenceKey.self, value: sottotitolo)
    }
    // COLORE SOTTOTITOLO (opzionale)
    func customNavigationColoreSottotitolo(_ coloreSottotitolo: Color?) -> some View{
        preference(key: CustomNavBarColoreSottotitoloPreferenceKey.self, value: coloreSottotitolo)
    }
    // COLORE BACK BUTTON
    func customNavigationColoreBackButton(_ coloreBackButton: Color?) -> some View{
        preference(key: CustomNavBarColoreBackButtonPreferenceKey.self, value: coloreBackButton)
    }
    // BACK BUTTON VISIBLE
    func customNavigationShowBackButton(_ showBackButton: Bool) -> some View{
        preference(key: CustomNavBarShowBackButtonPreferenceKey.self, value: showBackButton)
    }
    // NEXT BUTTON VISIBLE
    /*
    func customNavigationShowNextButton(_ showNextButton: Bool) -> some View{
        preference(key: CustomNavBarShowNextButtonPreferenceKey.self, value: showNextButton)
    }
    */
    func customNavigationEditButton(_ editButton: ButtonEdit?) -> some View{
        preference(key: CustomNavBarEditButtonPreferenceKey.self, value: editButton)
    }
    func customNavigationMenuButton(_ menuButton: ButtonMenu?) -> some View{
        preference(key: CustomNavBarMenuButtonPreferenceKey.self, value: menuButton)
    }
    func customNavigationAddButton(_ addButton: ButtonAdd?) -> some View{
        preference(key: CustomNavBarAddButtonPreferenceKey.self, value: addButton)
    }
    
    func customNavBarItems(titolo: Text, coloreSfondo: Color, coloreTesti: Color, coloreTitolo: Color?, sottotitolo: String? , coloreSottotitolo: Color? , coloreBackButton: Color? , shoBackButton: Bool , editButton: ButtonEdit? , menuButton: ButtonMenu?, addButton: ButtonAdd?) -> some View{
        self
            .customNavigationTitolo(titolo)
            .customNavigationColoreSfondo(coloreSfondo)
            .customNavigationColoreTesti(coloreTesti)
            .customNavigationColoreTitolo(coloreTitolo)
            .customNavigationSottotitolo(sottotitolo)
            .customNavigationColoreSottotitolo(coloreSottotitolo)
            .customNavigationShowBackButton(shoBackButton)
            //.customNavigationShowNextButton(showNextButton)
            .customNavigationEditButton(editButton)
            .customNavigationMenuButton(menuButton)
            .customNavigationAddButton(addButton)
    }
}
