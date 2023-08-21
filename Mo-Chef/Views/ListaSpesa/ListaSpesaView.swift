//
//  ListaSpesaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct ListaSpesaView: View {
    @ObservedObject var menuModel = MenuModel()
    @ObservedObject var editModel = EditModel()

    var body: some View {
        
        CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
            .customNavigationTitolo(Text("ora siam qua"))
            
        ){
            
                Text("vai via").foregroundColor(.red)
            
        }
            
    }
}

struct ListaSpesaView_Previews: PreviewProvider {
    static var previews: some View {
        ListaSpesaView()
    }
}
