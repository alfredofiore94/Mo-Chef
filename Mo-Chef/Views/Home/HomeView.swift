//
//  HomeView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var menuModel = MenuModel()

    var body: some View {
        Color.yellow.ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
