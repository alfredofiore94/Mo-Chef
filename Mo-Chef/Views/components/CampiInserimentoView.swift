//
//  CampoInserimentoView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/01/23.
//

import SwiftUI
import Combine

struct CampoInserimentoView: View {
    @Binding var valore: String
    @State var titoloCampo: String
    @State var limitChar: Int
    @State var placeholder: String
    var fontTitleSize: CGFloat = 25
    var body: some View {
        VStack{
            Text(titoloCampo)
                .font(.system(size: fontTitleSize, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            TextField("", text: $valore)
                //uso di custom placeholder
                .placeholder(when: valore.isEmpty) {
                    Text(placeholder)
                        .foregroundColor(Mo_ChefApp.arancioneCosmo)
                        .opacity(0.3)
               }
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

struct CampoInserimentoNumericoView: View {
    @Binding var valore: String
    @State var titoloCampo: String
    @State var limitChar: Int
    @State var placeholder: String
    var fontTitleSize: CGFloat = 25
    var body: some View {
        VStack{
            Text(titoloCampo)
                .font(.system(size: fontTitleSize, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            TextField("", text: $valore)
                //uso di custom placeholder
                .placeholder(when: valore.isEmpty) {
                    Text(placeholder)
                        .foregroundColor(Mo_ChefApp.arancioneCosmo)
                        .opacity(0.3)
               }
                .foregroundColor(Mo_ChefApp.arancioneCosmo)
                .padding(.vertical, 10)
                .keyboardType(.numbersAndPunctuation)
                .multilineTextAlignment(.center)
                .overlay(                        RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 2.0))
                )
                
                .frame(height: 42)
                .padding(.horizontal, 42)
        }
    }
}

struct CampoInserimentoPersoneView: View {
    @Binding var valore: Int?
    @State var titoloCampo: String
    @State var min: Int = 1
    @State var max: Int = 100
    @State var placeholder: String
    var fontTitleSize: CGFloat = 25

    var body: some View {
        VStack{
            Text(titoloCampo)
                .font(.system(size: fontTitleSize, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            TextField("", value: $valore, format: .number)
            //uso di custom placeholder
                .placeholderNumeric(when: valore == nil ? true : false) {
            Text(placeholder)
                .foregroundColor(Mo_ChefApp.arancioneCosmo)
                .opacity(0.3)
            }
            .foregroundColor(Mo_ChefApp.arancioneCosmo)
            .padding(.vertical, 10)
            .keyboardType(.numberPad)
            .multilineTextAlignment(.center)
            .overlay(                        RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 2.0))
            )
            .onReceive(Just(valore)) { _ in Utils.limitPerson(pers: &valore, min: min, max: max)}
            .frame(height: 42)
            .padding(.horizontal, 42)
        }
    }
}

struct AreaInserimentoView: View {
    @Binding var valore: String
    @State var titoloCampo: String
    @State var limitChar: Int
    @State var placeholder: String
    var fontTitleSize: CGFloat = 25

    var body: some View {
        VStack{
            Text(titoloCampo)
                .font(.system(size: fontTitleSize, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            
            TextField("", text: $valore, axis: .vertical)
                //uso di custom placeholder
                .placeholder(when: valore.isEmpty, alignment: .leading) {
                    Text(placeholder)
                        .foregroundColor(Mo_ChefApp.arancioneCosmo)
                        .opacity(0.3)
               }
                .foregroundColor(Mo_ChefApp.arancioneCosmo)
                .padding([.top, .leading, .trailing, .bottom])
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
    
    @Binding var valoreSelezionato: String
    @State var titoloCampo: String
    @State var placeholder: String = "Seleziona"
    @State var pickerDataset: [String]
    var fontTitleSize: CGFloat = 25

    var body: some View {
        VStack{
            Text(titoloCampo)
                .font(.system(size: fontTitleSize, weight: .bold))
                .foregroundColor(Mo_ChefApp.verdeScuro)
            ZStack{
                
                RoundedRectangle(cornerRadius: 8.0).strokeBorder(Mo_ChefApp.verdeScuro, style: StrokeStyle(lineWidth: 2.0)
                )
                .frame(height: 42)
                .padding(.horizontal, 42)
                
                Menu{
                    Picker(selection: $valoreSelezionato, label: Text("ciao")) {
                        
                        
                        ForEach(pickerDataset, id: \.self) { val in
                            Text(val).tag(val)
                        }
                    }
                } label: {
                    HStack{
                        Spacer()
                        if(valoreSelezionato == ""){
                            Text(placeholder)
                                .foregroundColor(Mo_ChefApp.arancioneCosmo)
                                .opacity(0.3)
                        } else {
                            Text(valoreSelezionato)
                                .frame(height: 42)
                        }
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
    
    @State static var nome = ""
    @State static var nome2: Int? = nil
    @State static var valore: String = ""
    @State static var picker: String = ""

    static var previews: some View {
        
        
        VStack{
            CampoInserimentoView(valore: $nome,titoloCampo: "nome",limitChar: 5, placeholder: "Inserire campo")
            Text(nome)
            CampoInserimentoNumericoView(valore: $nome,titoloCampo: "numerico",limitChar: 5, placeholder: "Inserire campo")
            CampoInserimentoPersoneView(valore: $nome2,titoloCampo: "persone", placeholder: "Inserire campo")
            AreaInserimentoView(valore: $nome,titoloCampo: "nome",limitChar: 200, placeholder: "Inserire campo")
            
            PickerInserimentoView(valoreSelezionato: $picker, titoloCampo: "picker", placeholder: "Selziona", pickerDataset: PickerData.tipologiePietanze)
            
        }
    }
}
