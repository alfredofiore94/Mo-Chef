//
//  RicettaCardView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 08/11/22.
//

import SwiftUI

struct RicettaCardView: View {
    @State var ricetta: Ricetta
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                
                .stroke(Mo_ChefApp.verdeScuro, lineWidth: 5)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
            HStack(alignment: .top){
                VStack (alignment: .leading){
                    Text(self.ricetta.tipoPiatto)
                        .font(.system(size: 18))
                    Text(self.ricetta.nomePiatto)
                        .padding(.leading)
                        //.padding(.bottom)
                        .padding(.top)
                        .font(.system(size: 30))
                        .multilineTextAlignment(.leading)
                   Spacer()
                }
                .padding()
                Spacer()
                VStack(alignment: .leading){
                    Spacer()
                    InfoRicetta(self.ricetta.difficolta, "chef_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    InfoRicetta(self.ricetta.tempoPrep, "timer_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    InfoRicetta(self.ricetta.costo, "coin_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    InfoRicetta("\(self.ricetta.numeroPersone) persone", "coin_img", coloreIcona: Mo_ChefApp.arancioneCosmo)
                    Spacer()
                }
                .frame(width: 100)
                .font(.system(size: 12))
                .padding(.trailing, 10)
            }
        }
        .frame(minHeight: 150)
        .frame(maxHeight: 300)
        .padding(20)
        .foregroundColor(Mo_ChefApp.verdeScuro)
        .font(.custom("SF Pro Text", size: 15))
        
    }
}

struct InfoRicetta: View {
    
    var nome: String
    var immagine: String
    var coloreNome: Color?
    var coloreIcona: Color?

    init(_ nome: String, _ immagine: String,  coloreNome: Color? = Mo_ChefApp.verdeScuro ,  coloreIcona: Color? = Mo_ChefApp.verdeScuro) {
        self.nome = nome
        self.immagine = immagine
        self.coloreNome = coloreNome
        self.coloreIcona = coloreIcona

    }

    var body: some View {
        HStack{
            Image(immagine)
                .renderingMode(.template)
                .foregroundColor(coloreIcona)
            Text(nome)
                .foregroundColor(coloreNome)
            Spacer()
        }
    }
}

struct RicettaCard_Previews: PreviewProvider {
    static var previews: some View {
        
        return RicettaCardView(ricetta: DataTest.getDataTest()[0])

    }
}
