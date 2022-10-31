//
//  WhoAreView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 31/10/22.
//

import SwiftUI

struct WhoAreView: View {
    var body: some View {
        
        ZStack{
            Color.white.ignoresSafeArea()
            ScrollView{
                VStack{
                    moveoBtn
                }
            }
        }
    }
}

extension WhoAreView{
    
    private var moveoBtn: some View {
        
        return Link(destination: URL(string: "https://www.moveo.it/")!){
            
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Mo_ChefApp.verdeScuro, lineWidth: 5)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
                
                
                Image("logo-white-moveo")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.red)
                    .padding(5)
                
                
            }
            .frame(width: .infinity, height: 50)
            .padding(.trailing, 30)
            .padding(.leading, 30)
            .padding(.bottom, 0)
            .padding(.top, 30)
            .foregroundColor(Mo_ChefApp.arancioneCosmo)
            .font(.custom("SF Pro Text", size: 25))
        }
    }
}
struct WhoAreView_Previews: PreviewProvider {
    static var previews: some View {
        WhoAreView()
    }
}
