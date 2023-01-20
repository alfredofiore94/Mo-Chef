//
//  ButtonsView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 20/01/23.
//

import SwiftUI

struct ButtonsView: View {
    
    @State var icona: String
    @State var coloreIcona: Color
    
    var body: some View {
        Button(action: {
            
        }, label:{
            Image(icona)
                .renderingMode(.template)
                .foregroundColor(coloreIcona)
        })
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView(icona: "plus-40", coloreIcona: Mo_ChefApp.arancioneCosmo)
    }
}
