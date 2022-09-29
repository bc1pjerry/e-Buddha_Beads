//
//  Demo.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 2022/9/29.
//

import SwiftUI

struct Demo: View {
    @State var index = 0
    @State var beads: [Bead] = [
        Bead(bead: initBeads(index: 2)),
        Bead(bead: initBeads(index: 1)),
        Bead(bead: initBeads(index: 0)),
        Bead(bead: initBeads(index: -2)),
        Bead(bead: initBeads(index: -2))
    ]
    var body: some View {
        ZStack {
            Bead(bead: initBeads(index: index + 2))
            Bead(bead: initBeads(index: index + 1))
            Bead(bead: initBeads(index: index))
            Bead(bead: initBeads(index: index - 1))
            Bead(bead: initBeads(index: index - 2))
            Text("\(index)")
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                if index == -2 {
                    index = 2
                } else {
                    index -= 1
                }
            }
        }
    }
}

private func initBeads(index: Int) -> BeadModel {
    var bead: BeadModel
    
    switch index {
    case 2:
        bead = BeadModel(beadFrameWidth: 80, beadOffsite: -215, color: Color("ThirdBead"))
        return bead
    case 1:
        bead = BeadModel(beadFrameWidth: 100, beadOffsite: -125, color: Color("SecondBead"))
        return bead
    case 0:
        bead = BeadModel(beadFrameWidth: 150, beadOffsite: 0, color: .orange)
        return bead
    case -1:
        bead = BeadModel(beadFrameWidth: 100, beadOffsite: 125, color: Color("SecondBead"))
        return bead
    case -2:
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
