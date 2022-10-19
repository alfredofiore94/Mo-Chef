//
//  CustomNavBarView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 22/08/22.
//

import SwiftUI

struct CustomNavBarView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let titolo: Text
    let coloreSfondo: Color
    let coloreTesti: Color

    let coloreTitolo: Color?
    let sottotitolo: String?
    let coloreSottotitolo: Color?
    let coloreBackButton: Color?
    
    //back button e next butto
    let showBackBtn: Bool?
    let showNextBtn: Bool?
    
    let buttonEdit: ButtonEdit?
    let buttonMenu: ButtonMenu?

    
    var body: some View {
        HStack{
            if showBackBtn != nil && showBackBtn == true {
                backButton
            }
            else if buttonMenu != nil {
                buttonMenu
            }
            Spacer()
            textTitles
            
            Spacer()
            /*
            if showNextBtn != nil && showNextBtn == true {
                nextButton
            }
            */
            if buttonEdit != nil {
                buttonEdit
            }
        }
        .padding()
        .accentColor(.white)
        .font(.headline)
        .background(coloreSfondo)
        .foregroundColor(coloreTesti)
        
    }
}

extension CustomNavBarView {
    
    private var backButton: some View {
        var coloreBkBtn = coloreTesti
        if let coloreBackButton = coloreBackButton {
            coloreBkBtn = coloreBackButton
        }
        
        return Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            
            Image(systemName: "chevron.left")
            
            .foregroundColor(coloreBkBtn)
        })
    }
    
    private var nextButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.right")
                .foregroundColor(coloreBackButton)
        })
    }
    
    private var textTitles: some View {
        VStack{
            titolo
                .foregroundColor(coloreTitolo)
            if let sottotitolo = sottotitolo {
                Text(sottotitolo)
                .foregroundColor(coloreSottotitolo)
            }
            
        }
    }
}



struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomNavBarView(titolo: Text("ciao titolo nuovo").foregroundColor(.green), coloreSfondo: .gray, coloreTesti: .red, coloreTitolo: nil, sottotitolo: "sottoooo", coloreSottotitolo: nil, coloreBackButton: nil, showBackBtn: nil, showNextBtn: nil, buttonEdit: nil, buttonMenu: nil)
            Spacer()
        }
    }
}
