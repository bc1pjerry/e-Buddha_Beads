//
//  Beads.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 2022/9/29.
//

import SwiftUI

struct BeadModel {
    var beadFrameWidth: CGFloat
    var beadOffsite: CGFloat
    var color: Color
}

struct Bead: View {
    var bead: BeadModel
    var body: some View {
        Circle()
            .frame(width: bead.beadFrameWidth)
            .offset(y: bead.beadOffsite)
            .foregroundColor(bead.color)
    }
}

struct Beads_Previews: PreviewProvider {
    static var previews: some View {
        let bead = BeadModel(beadFrameWidth: 150, beadOffsite: 0, color: .orange)
        Bead(bead: bead)
    }
}
