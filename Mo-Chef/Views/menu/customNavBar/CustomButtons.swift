//
//  CustomButtons.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 19/10/22.
//

import Foundation
import SwiftUI

struct ButtonEdit: View, Equatable {
    
    
    @ObservedObject var editModel: EditModel
    let icona: String
    let coloreIcona: Color

    static func == (lhs: ButtonEdit, rhs: ButtonEdit) -> Bool {
        return lhs.editModel.isOpenEdit == rhs.editModel.isOpenEdit
    }
    
    var body: some View {
        return
            Button(action: {
                editModel.openCloseEdit()
            }, label:{
                Image(icona)
                    .renderingMode(.template)
                    .foregroundColor(coloreIcona)
            })
    }
}

struct ButtonMenu: View, Equatable {
    static func == (lhs: ButtonMenu, rhs: ButtonMenu) -> Bool {
        return lhs.openCloseAct == rhs.openCloseAct
    }
    
    //@ObservedObject var menuModel: MenuModel
    let icona: String
    let coloreIcona: Color
    @Binding var openCloseAct: Bool

    
    
    var body: some View {
       return
        
           // Button(action: {
                CustomNavLink(destinazione: MenuView()
                    .customNavigationTitolo(Text("Menù")
                        .foregroundColor(.white)
                        .font(.system(size: 30)
                            
                             )
                            
                    )
                    .customNavigationColoreSfondo(Mo_ChefApp.arancioneCosmo)
                    .customNavigationColoreTitolo(.white)
                    //.transition(.move(edge: .leading))
                    //.animation(.easeInOut)
                    
                ){
                    Image(icona)
                        .renderingMode(.template)
                        .foregroundColor(coloreIcona)
                }
                
           // }, label:{
                
          //  })
        
            
    }
}

class MenuModel: ObservableObject{
    @Published var isOpenMenu: Bool = false
    
    func openCloseMenu(){
        withAnimation(.default){
            isOpenMenu.toggle()
        }
    }
}

class EditModel: ObservableObject{
    @Published var isOpenEdit: Bool = false
    
    func openCloseEdit(){
        withAnimation(.default){
            isOpenEdit.toggle()
        }
    }
}

struct ButtonAdd: View, Equatable {
    static func == (lhs: ButtonAdd, rhs: ButtonAdd) -> Bool {
        return lhs.push == rhs.push

    }
    
    @Binding var push: Bool
    let icona: String
    let coloreIcona: Color
    
    var body: some View {
        Button(action: {
            withAnimation(.easeOut(duration: 0.3)) {
                self.push.toggle()
            }
        }, label:{
            Image(icona)
                .renderingMode(.template)
                .foregroundColor(coloreIcona)
        })
     
    }
}
