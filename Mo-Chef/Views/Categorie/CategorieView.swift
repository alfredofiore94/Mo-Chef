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
        
            ZStack{
                Color.white
                VStack{
                    Spacer()
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
                    Spacer()
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
                    Spacer()
                    HStack{
                        Spacer()
                            .aspectRatio(0.5, contentMode: .fit)
                            .clipped()
                        CustomNavLink(destinazione: Text("me ne sono andato").foregroundColor(.red)
                            .customNavigationTitolo(Text("ora siam qua"))
                            .customNavigationEditButton(ButtonEdit(editModel: editModel, icona: "details_img", coloreIcona: .white))
                        ){
                            
                            categoryButton("Dolci e \n Frutta")
                            
                        }
                        Spacer()
                            .aspectRatio(0.5, contentMode: .fit)
                            .clipped()
                       
                    }
                    //Spacer()
                    
                }

            }
            .foregroundColor(Mo_ChefApp.verdeScuro)
        
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
                .padding(5)
            
                //.background(.red)
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
