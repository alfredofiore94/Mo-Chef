//
//  HomeView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var menuModel = MenuModel()
    @ObservedObject var editModel = EditModel()

    var body: some View {
        CustomNavView(){
            CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                .customNavigationTitolo(Text("ora siam qua"))
                .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
            ){
                ZStack{
                    Color.yellow
                    Text("vai via").foregroundColor(.red)
                }
            }
            .customNavigationTitolo(Text("Eccoci qua")
                .foregroundColor(.green)
                
            )
            .customNavigationShowBackButton(false)
            .customNavigationColoreTitolo(.red)
            .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
            
            .customNavigationMenuButton(ButtonMenu(menuModel: menuModel, icona: "menu_img", coloreIcona: .white)
            )
            .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
