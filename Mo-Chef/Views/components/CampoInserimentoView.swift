//
//  CampoInserimentoView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/01/23.
//

import SwiftUI
import Combine

struct CampoInserimentoView: View {
    @State var valore: String
    @State var titoloCampo: String
    @State var limitChar: Int
    @State var placeholder: String
    var body: some View {
        VStack{
            Text(titoloCampo)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            TextField(placeholder, text: $valore)
                .foregroundColor(Mo_ChefApp.arancioneCosmo)
                .padding(.vertical, 10)
                .keyboardType(.default)
                .multilineTextAlignment(.center)
                .overlay(                        RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 2.0))
                )
                .onReceive(Just(valore)) { _ in Utils.limitText(name: &valore, limitChar) }
            
                .frame(height: 42)
                .padding(.horizontal, 42)
        }
    }
}

struct AreaInserimentoView: View {
    @State var valore: String
    @State var titoloCampo: String
    @State var limitChar: Int
    @State var placeholder: String
    var body: some View {
        VStack{
            Text(titoloCampo)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            
            TextField(placeholder, text: $valore, axis: .vertical)
                .foregroundColor(Mo_ChefApp.arancioneCosmo)
                .padding([.top, .leading, .trailing, .bottom])
                .keyboardType(.default)
                .multilineTextAlignment(.leading)
                .lineLimit(5, reservesSpace: true)
                //.frame(height: 150)
                .overlay(
                    RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 2.0))
                        
                )
                .onReceive(Just(valore)) { _ in Utils.limitText(name: &valore, limitChar) }
                .frame(height: 142)
                .padding(.horizontal, 25)
        }
    }
}

struct PickerInserimentoView: View {
    
    @State var valoreSelezionato: String
    @State var titoloCampo: String
    @State var placeholder: String
    @State var pickerDataset: [String]
    var body: some View {
        VStack{
            Text(titoloCampo)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            ZStack{
                
                RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 2.0)
                )
                .frame(height: 42)
                .padding(.horizontal, 42)
                
                Menu{
                    Picker("Seleziona", selection: $valoreSelezionato) {
                        ForEach(pickerDataset, id: \.self) { val in
                            Text(val).tag(val)
                        }
                    }
                } label: {
                    HStack{
                        Spacer()
                        Text(valoreSelezionato)
                            .frame(height: 42)
                        Spacer()
                            
                    }
                    .font(.headline)
                    .foregroundColor(Mo_ChefApp.arancioneCosmo)
                    .padding(.horizontal, 42)
                }
            }
        }
    }
}

struct CampoInserimentoView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CampoInserimentoView(valore: "",titoloCampo: "nome",limitChar: 5, placeholder: "Inserire campo")
            AreaInserimentoView(valore: "",titoloCampo: "nome",limitChar: 200, placeholder: "Inserire campo")
            
            PickerInserimentoView(valoreSelezionato: "Seleziona", titoloCampo: "picker", placeholder: "seelziona", pickerDataset: PickerData.tipologiePietanze)
             
            
        }
    }
}
