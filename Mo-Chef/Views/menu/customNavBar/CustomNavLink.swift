//
//  CustomNavLink.swift
//  CookMo
//
//  Created by Alfredo Fiore on 08/09/22.
//

import SwiftUI

struct CustomNavLink<Label: View, Destination: View>: View {
    
    let destinazione: Destination
    let label: Label
    
    init(destinazione: Destination, @ViewBuilder label: () -> Label){
        
        self.destinazione = destinazione
        self.label = label()
    }
    
    var body: some View {
        NavigationLink(
            destination: CustomNavBarContainerView(contenuto: {
                destinazione
            }) .navigationBarHidden(true)
                
                
            ,
            label: {
                label
            }) 
       
    }
}

struct CustomNavLink_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView(){
            CustomNavLink(destinazione: Text("Destinazione")){
                Text("premi per andare")
            }
        }
    }
}
