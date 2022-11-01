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
                    socialBtn(nome: "Linkedin")
                    socialBtn(nome: "Twitter")
                    socialBtn(nome: "Facebook")
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
    
    private func socialBtn(nome: String) -> some View{
        
        let nomeLower = nome.lowercased()
        var link : String
        switch nomeLower {
        case "linkedin":
            link = "https://www.linkedin.com/company/moveo-srl/mycompany/"
        case "twitter":
            link = "https://twitter.com/MoveoConsulting/"
        case "facebook":
            link = "https://www.facebook.com/moveoconsulting"
        default:
            link = ""
        }
        
        return Link(destination: URL(string: link)!){
            
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Mo_ChefApp.verdeScuro, lineWidth: 5)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
                HStack{
                    Image(nomeLower+"_icon")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .padding(5)
                        .padding(.leading, 25)
                        .frame(width: 80, alignment: .leading)
                    Spacer()

                    Text(nome)
                        .frame(alignment: .leading)
                    Spacer()
                    Spacer()
                }
                
            }
            .frame(width: .infinity, height: 50)
            .padding(.trailing, 30)
            .padding(.leading, 30)
            .padding(.bottom, 0)
            .padding(.top, 30)
            .foregroundColor(Mo_ChefApp.verdeScuro)
            .font(.custom("SF Pro Text", size: 25))
        }
    }
}
struct WhoAreView_Previews: PreviewProvider {
    static var previews: some View {
        WhoAreView()
    }
}
