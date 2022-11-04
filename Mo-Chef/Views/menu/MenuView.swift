//
//  MenuView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 19/10/22.
//

import SwiftUI

struct MenuView: View {
    
    @ObservedObject var menuModel: MenuModel
    @ObservedObject var editModel: EditModel

    var body: some View {
        CustomNavView(){
            ZStack{
                Color.white.ignoresSafeArea()
                ScrollView{
                    VStack{
                        CustomNavLink(destinazione: WhoAreView()
                            .customNavigationTitolo(
                                Text("Chi siamo")
                                                    )
                            .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
                            .customNavigationColoreTitolo(.white)
                        ){
                            menuButton(nome: "Chi siamo")
                        }
                        
                        CustomNavLink(destinazione: CreditView()
                            .customNavigationTitolo(Text("Credits"))
                            .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
                            .customNavigationColoreTitolo(.white)
                        ){
                            menuButton(nome: "Credits")
                        }
                    }
                }
            }
            .customNavigationTitolo(Text("Menù").foregroundColor(.white)
                .font(.system(size: 30))
            )
            .customNavigationShowBackButton(false)
            .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
            .customNavigationMenuButton(ButtonMenu(menuModel: menuModel, icona: "close_img", coloreIcona: .white))
        }

    }
}

extension MenuView {
    
    func menuButton(nome: String) -> some View{
        return ZStack{
            RoundedRectangle(cornerRadius: 15)
                .stroke(Mo_ChefApp.verdeScuro, lineWidth: 5)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
            Text(nome)
        }
        .frame(width: .infinity, height: 50)
        .padding(.trailing, 30)
        .padding(.leading, 30)
        .padding(.bottom, 0)
        .padding(.top, 30)
        .foregroundColor(Mo_ChefApp.arancioneCosmo)
        .font(.custom("SF Pro Text", size: 25))
    }
}

struct MenuView_Previews: PreviewProvider {

    static var previews: some View {
        let menuModel =  MenuModel()
        let editModel =  EditModel()

        MenuView(menuModel: menuModel, editModel: editModel)
    }
}
