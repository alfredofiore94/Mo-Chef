//
//  CategorieView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct CategorieView: View {
    @ObservedObject var menuModel = MenuModel()
    @ObservedObject var editModel = EditModel()

    var body: some View {
        CustomNavView(){
            ZStack{
                Color.white
                VStack{
                    HStack{
                        Spacer()
                        CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                            .customNavigationTitolo(Text("ora siam qua"))
                            .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
                        ){
                            
                            categoryButton("Antipasti")
                            
                        }
                        Spacer()
                        CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                            .customNavigationTitolo(Text("ora siam qua"))
                            .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
                        ){
                            
                            categoryButton("Primi")
                            
                        }
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                            .customNavigationTitolo(Text("ora siam qua"))
                            .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
                        ){
                            
                            categoryButton("Secondi")
                            
                        }
                        Spacer()
                        CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                            .customNavigationTitolo(Text("ora siam qua"))
                            .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
                        ){
                            
                            categoryButton("Contorni")
                            
                        }
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                            .customNavigationTitolo(Text("ora siam qua"))
                            .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
                        ){
                            
                            categoryButton("Dolci e \n Frutta")
                            
                        }
                        .customNavigationTitolo(Text("MonChef")
                                                
                        )
                        .customNavigationShowBackButton(false)
                        .customNavigationColoreTitolo(.white)
                        .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
                        
                        .customNavigationMenuButton(ButtonMenu(menuModel: menuModel, icona: "menu_img", coloreIcona: .white))
                        Spacer()
                    }
                }
            }
        }.foregroundColor(Mo_ChefApp.verdeScuro)
    }
}

extension CategorieView {
    func categoryButton(_ nomeCategoria: String) -> some View{
        return ZStack{
            
            Image("dish_img")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .clipped()
                .padding(5) // Width of the border
                .frame(width: 180)

            Text(nomeCategoria)
                .font(.system(size: 15, weight: .bold))
        }
    }
}

struct CategorieView_Previews: PreviewProvider {
    static var previews: some View {
        CategorieView()
    }
}
