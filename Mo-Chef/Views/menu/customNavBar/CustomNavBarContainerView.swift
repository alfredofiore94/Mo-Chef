//
//  CustomNavBarContainerView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 07/09/22.
//

import SwiftUI



struct CustomNavBarContainerView <Content: View> : View {

    let contenuto: Content
    
    @State var titolo: Text = Text("")
    @State var coloreSfondo: Color = Color.cyan
    @State var coloreTesti: Color = Color.red
    
    @State var coloreTitolo: Color? = nil
    @State var sottotitolo: String? = nil
    @State var coloreSottotitolo: Color? = nil
    @State var coloreBackButton: Color? = nil
    
    //back button e next butto
    @State var showBackBtn: Bool? = true
    @State var showNextBtn: Bool? = false
    
    //button edit e menu
    @State var buttonEdit: ButtonEdit? = nil
    @State var buttonMenu: ButtonMenu? = nil
    @State var buttonAdd: ButtonAdd? = nil
    
    init(@ViewBuilder contenuto: () -> Content){
        
        self.contenuto = contenuto()
       
    }
    
    var body: some View {
        VStack(spacing: 0){
            CustomNavBarView(titolo: titolo, coloreSfondo: coloreSfondo, coloreTesti: coloreTesti, coloreTitolo: coloreTitolo, sottotitolo: sottotitolo, coloreSottotitolo: coloreSottotitolo, coloreBackButton: coloreBackButton, showBackBtn: showBackBtn, showNextBtn: showNextBtn, buttonEdit: buttonEdit, buttonMenu: buttonMenu, buttonAdd: buttonAdd)
            contenuto
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitoloPreferenceKey.self ,perform: {
            value in
            self.titolo = value
        })
        .onPreferenceChange(CustomNavBarColoreSfondoPreferenceKey.self ,perform: {
            value in
            self.coloreSfondo = value
        })
        .onPreferenceChange(CustomNavBarColoreTestiPreferenceKey.self ,perform: {
            value in
            self.coloreTesti = value
        })
        .onPreferenceChange(CustomNavBarColoreTitoloPreferenceKey.self ,perform: {
            value in
            self.coloreTitolo = value
        })
        .onPreferenceChange(CustomNavBarSottotitoloPreferenceKey.self ,perform: {
            value in
            self.sottotitolo = value
        })
        .onPreferenceChange(CustomNavBarColoreSottotitoloPreferenceKey.self ,perform: {
            value in
            self.coloreSottotitolo = value
        })
        .onPreferenceChange(CustomNavBarColoreBackButtonPreferenceKey.self ,perform: {
            value in
            self.coloreBackButton = value
        })
        .onPreferenceChange(CustomNavBarShowBackButtonPreferenceKey.self ,perform: {
            value in
            self.showBackBtn = value
        })
        /*
        .onPreferenceChange(CustomNavBarShowNextButtonPreferenceKey.self ,perform: {
            value in
            self.showNextBtn = value
        })
         */
        
        .onPreferenceChange(CustomNavBarEditButtonPreferenceKey.self ,perform: {
            value in
            self.buttonEdit = value
        })
        .onPreferenceChange(CustomNavBarMenuButtonPreferenceKey.self ,perform: {
            value in
            self.buttonMenu = value
        })
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {

    static var previews: some View {

        CustomNavBarContainerView{
            ZStack{
                Color.green.ignoresSafeArea()
                Text("ciao mondo")
                    .customNavigationTitolo(Text("Nuovo titolo"))
                    
            }
        }
    }
}
