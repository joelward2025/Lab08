//
//  Chair.swift
//  Lab08
//
//  Created by Joel Ward on 10/16/24.
//

import SwiftUI

struct Chair: Shape {
    var legWidth: CGFloat
    var legHeight: CGFloat
    var seatLength: CGFloat
    var seatThickness: CGFloat



    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let chairBack = CGRect(x: rect.minX, y: rect.minY, width: legWidth, height: rect.maxY - rect.minY)
        let frontLeg = CGRect(x: rect.minX + seatLength, y: rect.maxY - legHeight, width: legWidth, height: legHeight)
        let seat = CGRect(x: rect.minX + legWidth, y: rect.maxY - legHeight - seatThickness, width: seatLength, height: seatThickness)
        path.addRect(chairBack)
        path.addRect(frontLeg)
        path.addRect(seat)

        return path
    }
}
