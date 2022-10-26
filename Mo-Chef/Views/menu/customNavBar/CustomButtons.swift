//
//  CustomButtons.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 19/10/22.
//

import Foundation
import SwiftUI

struct ButtonEdit: View, Equatable {
    
    
    var body: some View {
        
        return Button("Edit"){
            
        }.foregroundColor(.red)
    }
}

struct ButtonMenu: View, Equatable {
    @ObservedObject var menuModel: MenuModel
    let nomeMenu: String

    static func == (lhs: ButtonMenu, rhs: ButtonMenu) -> Bool {
        return lhs.menuModel.isOpenMenu == rhs.menuModel.isOpenMenu
    }
    
    var body: some View {
        return 
            Button(nomeMenu, action: {
                menuModel.openCloseMenu()
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
