//
//  ButtonsView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 20/01/23.
//

import SwiftUI

struct NextBtnView: View {
    
    @State var icona: String
    @State var coloreIcona: Color
    //@State var azione: Void = {}()
    
    var body: some View {
        //Button(action: {}, label:{
            Image(icona)
                .renderingMode(.template)
                .foregroundColor(coloreIcona)
        //})
    }
}

struct NextBtnView_Previews: PreviewProvider {
    
    func setValuePippo (pippo: inout Bool) -> Void{
        
        pippo = !pippo
        return
    }
    
    static var previews: some View {
        
        NextBtnView(icona: "plus-40", coloreIcona: Mo_ChefApp.arancioneCosmo)
    }
}
