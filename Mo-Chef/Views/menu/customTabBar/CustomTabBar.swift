//
//  CustomTabBar.swift
//  Mo-chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct CustomTabBar: View {
    
    
    
    let listaTabs: [CustomTabBarItem]
    
    //imposta il tab iniziale anche
    @Binding var tabSelezionato : CustomTabBarItem
    
    let coloreSfondo: Color
    let coloreSelezione: Color
    
    var body: some View {
        HStack{
            
            ForEach(listaTabs, id: \.self){
                tab in tabView(tabItem: tab)
                    .onTapGesture {
                        switchToTaItem(tab: tab)
                    }
            }
        }
        .padding(6)
        .background(coloreSfondo.ignoresSafeArea(edges: .bottom))
        
    }
}

extension CustomTabBar {
    
    private func tabView(tabItem: CustomTabBarItem) -> some View {
        VStack(alignment: .center)  {
            Image(tabItem.nomeIcona)
                .renderingMode(.template)
            
            Text(tabItem.titolo)
                //.font(.custom("SF Pro Text", size: 15))
                .font(tabItem.font)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .foregroundColor(tabSelezionato == tabItem ? coloreSelezione : tabItem.colore)
        .padding(.all, 10)
        .frame( maxWidth: .infinity)
        .frame(height: 102)
        .background(tabItem.coloreSfondo)

        
    }
    
    private func switchToTaItem(tab: CustomTabBarItem){
        
        withAnimation(.easeInOut) {
            tabSelezionato = tab
        }
    }
   
    
}

struct CustomMainTabBar_Previews: PreviewProvider {
    
    /*
     Questa è una preview di come viene una tab bar.
     per utilizzarla si inseriscono nel container le view.
     */
    
    static let tabs: [CustomTabBarItem] = [
        .bilancia, .categorie, .home, .cerca, .listaSpesa
    ]
    
    
    static var previews: some View {
        VStack{
            Spacer()
            CustomTabBar(listaTabs: tabs,tabSelezionato: .constant(tabs[2]) , coloreSfondo: Color(red: 227 / 255, green: 124 / 255, blue: 81 / 255), coloreSelezione: Mo_ChefApp.verdeSelezione)
        }
            
    }
}

