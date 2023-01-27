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
    
    var body: some View {
        Image(icona)
            .renderingMode(.template)
            .foregroundColor(coloreIcona)
    }
}

struct DeleteBtnView: View {
    
    @State var label: String
    @State var coloreIcona: Color
    
    var body: some View {
        Text(label)
            .padding(.vertical, 8)
            .padding(.horizontal, 20)
            .frame(height: 42)
            .background(coloreIcona)
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(8)
    }
}

struct CloseButton: View {
    
    
    var body: some View {
        Image(systemName: "xmark")
            .background(Mo_ChefApp.verdeScuro)
            .foregroundColor(.white)
            .font(.largeTitle)
            //.padding(.top, 5)
            //.padding(.trailing, 5)
            .cornerRadius(8)
            // per simulare il bordo
            //mettendo il padding dopo un altro bordo
            .padding(5) // Width of the border
            //.background(Mo_ChefApp.verdeScuro) // Color of the border
            //.cornerRadius(10) // Outer corner radius
            .background(RoundedCornersCustom(color: Mo_ChefApp.verdeScuro, bottomLeft: 10))
        
    }
}

struct NextBtnView_Previews: PreviewProvider {
    
    func setValuePippo (pippo: inout Bool) -> Void{
        
        pippo = !pippo
        return
    }
    
    static var previews: some View {
        
        NextBtnView(icona: "plus-40", coloreIcona: Mo_ChefApp.arancioneCosmo)
        DeleteBtnView(label: "Elimina", coloreIcona: Mo_ChefApp.arancioneCosmo)
    }
}
