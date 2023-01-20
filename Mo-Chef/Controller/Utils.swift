//
//  File.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 18/01/23.
//

import Foundation
import SwiftUI

class Utils {
    
    //Function to keep text length in limits
    static func limitText(name: inout String, _ upper: Int) {
        if name.count > upper {
            name = String(name.prefix(upper))
        }
    }
}
