//
//  RoundedCornersCustomView.swift
//  Mo-Chef
//
//  Created by Alfredo Fiore on 27/01/23.
//

import SwiftUI

struct RoundedCornersCustom: View {
    var color: Color = .black
    var topLeft: CGFloat = 0.0 // top-left radius parameter
    var topRight: CGFloat = 0.0 // top-right radius parameter
    var bottomLeft: CGFloat = 0.0 // bottom-left radius parameter
    var bottomRight: CGFloat = 0.0 // bottom-right radius parameter
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height
                
                // We make sure the radius does not exceed the bounds dimensions
                let tr = min(min(self.topRight, h/2), w/2)
                let tl = min(min(self.topLeft, h/2), w/2)
                let bl = min(min(self.bottomLeft, h/2), w/2)
                let br = min(min(self.bottomRight, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                }
                .fill(self.color)
        }
    }
}
