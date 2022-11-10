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
                        .padding(.bottom)
                        .padding(.top)
                        .font(.system(size: 30))
                   
                }
                .padding()
                Spacer()
                VStack(alignment: .leading){

                    InfoRicetta(self.ricetta.difficolta, "chef_img")
                    InfoRicetta(self.ricetta.tempoPrep, "timer_img")
                    InfoRicetta(self.ricetta.costo, "coin_img")

                    
                }
                .font(.system(size: 12))
                .padding(.trailing, 50)
                .padding(.top, 40)
                
            }
            
        }
        
        .frame(width: .infinity, height: 150)
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

        }
    }
}

struct RicettaCard_Previews: PreviewProvider {
    static var previews: some View {
        
        return RicettaCardView(ricetta: DataTest.getDataTest()[0])

    }
}
