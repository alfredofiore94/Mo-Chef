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
        
        return Button("edit"){
            
        }.foregroundColor(.red)
    }
}

struct ButtonMenu: View, Equatable {
    var body: some View {
        return 
            CustomNavLink(destinazione: MenuView()
                .customNavigationColoreSfondo(.clear)
                .customNavigationShowBackButton(false)
                .customNavigationMenuButton(ButtonMenu())
                
            ){
                Text("vai la")
            }
            
        .foregroundColor(.orange)
    }
}
