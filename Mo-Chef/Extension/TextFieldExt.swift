//
//  TextFieldExt.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 25/01/23.
//

import Foundation
import SwiftUI

extension TextField {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .center,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
    
    func placeholderNumeric<Content: View>(
        when shouldShow: Bool?,
        alignment: Alignment = .center,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity((shouldShow ?? true) ? 1 : 0)
            self
        }
    }
}

    

