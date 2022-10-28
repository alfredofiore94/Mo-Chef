//
//  CercaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct CercaView: View {
    
    @ObservedObject var menuModel = MenuModel()

    var body: some View {
        CustomNavView(){
            CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                .customNavigationTitolo(Text("ora siam qua"))
                .customNavigationEditButton(ButtonEdit())
            ){
                
                    Text("vai via").foregroundColor(.red)
                
            }
            .customNavigationTitolo(Text("Eccoci qua").foregroundColor(.green))
            .customNavigationShowBackButton(false)
            .customNavigationColoreTitolo(.red)
            .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
            
            .customNavigationMenuButton(ButtonMenu(menuModel: menuModel, nomeMenu: "Menù")
                
            )
        }
    }
}

struct CercaView_Previews: PreviewProvider {
    static var previews: some View {
        CercaView()
    }
}
