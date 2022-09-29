//
//  Beads.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 2022/9/29.
//

import SwiftUI

struct Bead: View {
    var beadFrameWidth: CGFloat
    var beadOffsite: CGFloat
    var beadIndex: Int
    var body: some View {
        Circle()
            .frame(width: beadFrameWidth)
            .foregroundColor(.orange)
            .offset(y: beadOffsite)
            .animation(.easeInOut, value: beadIndex)
    }
}

@ViewBuilder private func circle(index: Int) -> some View {
    switch index {
    case 2:
        Circle()
            .frame(width: 80)
            .foregroundColor(Color("ThirdBead"))
            .offset(x: 0, y: -215)
    case 1:
        Circle()
            .frame(width: 100)
            .foregroundColor(Color("SecondBead"))
            .offset(x: 0, y: -125)
    case 0:
        Circle()
            .frame(width: 150)
            .foregroundColor(.orange)
    case -1:
        Circle()
            .frame(width: 100)
            .foregroundColor(Color("SecondBead"))
            .offset(x: 0, y: 125)
    case -2:
        Circle()
            .frame(width: 80)
            .foregroundColor(Color("ThirdBead"))
            .offset(x: 0, y: 215)
    default:
        Circle()
    }
}

struct Beads_Previews: PreviewProvider {
    static var previews: some View {
        Bead(beadFrameWidth: 100, beadOffsite: 0, beadIndex: 0)
    }
}
