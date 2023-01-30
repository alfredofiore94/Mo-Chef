//
//  BackgroundClearView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 27/01/23.
//

import SwiftUI

/**
 Background trasparente per Sheet  e fullScreenCover
 */

struct BackgroundClearView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}
