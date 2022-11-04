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
    @ObservedObject var menuModel: MenuModel
    let icona: String
    let coloreIcona: Color

    static func == (lhs: ButtonMenu, rhs: ButtonMenu) -> Bool {
        return lhs.menuModel.isOpenMenu == rhs.menuModel.isOpenMenu
    }
    
    var body: some View {
        return 
            Button(action: {
                menuModel.openCloseMenu()
            }, label:{
                Image(icona)
                    .renderingMode(.template)
                    .foregroundColor(coloreIcona)
            }) 
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
