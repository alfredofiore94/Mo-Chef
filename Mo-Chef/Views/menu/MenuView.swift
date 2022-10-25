//
//  MenuView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 19/10/22.
//

import SwiftUI

struct MenuView: View {
    
    @StateObject var menuModel: MenuModel
    
    var body: some View {
        CustomNavView(){
            ZStack{
                Color.white.ignoresSafeArea()
                
                CustomNavLink(destinazione: Text("me ne sono andato")
                    .customNavigationTitolo(Text("ora siam qua"))
                    .customNavigationEditButton(ButtonEdit())
                ){
                    Text("vai la")
                }
            }
            .customNavigationTitolo(Text("menù").foregroundColor(.white))
            .customNavigationShowBackButton(false)
            .customNavigationColoreTitolo(.red)
            .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
            .customNavigationMenuButton(ButtonMenu(menuModel: menuModel, nomeMenu: "X"))
        }

    }
}

struct MenuView_Previews: PreviewProvider {

    static var previews: some View {
        let menuModel =  MenuModel()

        MenuView(menuModel: menuModel)
    }
}
