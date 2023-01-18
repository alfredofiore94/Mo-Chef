//
//  Fase1AddRicettaView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 16/11/22.
//

import SwiftUI

struct Fase1AddRicettaView: View {
    
    @State var ricetta: Ricetta
    
    var body: some View {
        ZStack{
            Color.white
            VStack{
                titolo
                Spacer()
            }
        }
    }
    
    var titolo: some View {
        
       
        VStack{
            Text("TITOLO RICETTA")

            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $ricetta.nomePiatto)
            /*
            RoundedRectangle(cornerRadius: 15)
                
                .stroke(Mo_ChefApp.verdeScuro, lineWidth: 5)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
                .frame(height: 100)

                .padding(80)
                .foregroundColor(Mo_ChefApp.verdeScuro)
                .font(.custom("SF Pro Text", size: 15))
             */
        }.padding(.top)
    }
}

struct Fase1AddRicettaView_Previews: PreviewProvider {
    static var previews: some View {
        Fase1AddRicettaView(ricetta: DataTest.getDataTest()[0])
    }
}
