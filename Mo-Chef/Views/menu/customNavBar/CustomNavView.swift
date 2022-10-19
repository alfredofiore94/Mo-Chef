//
//  CustomNavView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 07/09/22.
//

import SwiftUI

struct CustomNavView <Content:View> : View {
    
    let contenuto: Content
    
    init(@ViewBuilder contenuto: () -> Content){
        self.contenuto = contenuto()
        
    }
    
    var body: some View {
        NavigationView {
            CustomNavBarContainerView(){
                
                contenuto
            }
            .navigationBarHidden(true)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CustomNavView_Previews: PreviewProvider {
    
    let buttonE: ButtonEdit = ButtonEdit()
    
    static var previews: some View {
        CustomNavView(){
            ZStack{
                Color.yellow.ignoresSafeArea()
                
                CustomNavLink(destinazione: Text("me ne sono andato")
                    .customNavigationTitolo(Text("ora siam qua"))
                    .customNavigationEditButton(ButtonEdit())
                ){
                    Text("vai la")
                }
            }
            .customNavigationTitolo(Text("Eccoci qua").foregroundColor(.green))
            .customNavigationShowBackButton(false)
            .customNavigationColoreTitolo(.red)
            .customNavigationColoreSfondo(.white)
            
            .customNavigationMenuButton(ButtonMenu())
        }
    }
}

