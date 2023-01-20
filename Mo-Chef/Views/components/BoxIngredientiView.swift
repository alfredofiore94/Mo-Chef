//
//  BoxIngredientiView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 20/01/23.
//

import SwiftUI

struct BoxIngredientiView: View {
    
    @State var titolo: String
    @State var listaIngr: [Ingrediente] = []
    var body: some View {
        VStack{
            Text(titolo)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 5.0))
                .frame(minHeight: 142)
                .padding(.horizontal, 25)
            
        }
    }
}

struct BoxIngredientiView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
                .padding()
            BoxIngredientiView(titolo: "Ingredienti", listaIngr: DataTest.getDataTest()[0].listaIngredienti)
            Spacer()
                .padding()
        }
    }
}
