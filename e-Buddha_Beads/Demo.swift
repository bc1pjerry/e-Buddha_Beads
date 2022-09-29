//
//  Demo.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 2022/9/29.
//

import SwiftUI

struct Demo: View {
    var index = 0
    var body: some View {
        ZStack {
            Bead(bead: initBeads(index: index, offset: -1))
            Bead(bead: initBeads(index: index, offset: -2))
            Bead(bead: initBeads(index: index, offset: 2))
            Bead(bead: initBeads(index: index, offset: 1))
            Bead(bead: initBeads(index: index, offset: 0))

            Text("\(index)")
        }
    }
}

private func initBeads(index: Int, offset: Int) -> BeadModel {
    var bead: BeadModel
    let trueIndex = index + offset
    switch trueIndex {
    case 2, -3:
        bead = BeadModel(beadFrameWidth: 80, beadOffsite: -215, color: Color("ThirdBead"))
        return bead
    case 1, -4:
        bead = BeadModel(beadFrameWidth: 100, beadOffsite: -125, color: Color("SecondBead"))
        return bead
    case 0:
        bead = BeadModel(beadFrameWidth: 150, beadOffsite: 0, color: .orange)
        return bead
    case -1, 4:
        bead = BeadModel(beadFrameWidth: 100, beadOffsite: 125, color: Color("SecondBead"))
        return bead
    case -2, 3:
        bead = BeadModel(beadFrameWidth: 80, beadOffsite: 215, color: Color("ThirdBead"))
        return bead
    default:
        return BeadModel(beadFrameWidth: 150, beadOffsite: 0, color: .gray)
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
