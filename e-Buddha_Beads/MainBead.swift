//
//  MainBead.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 2022/9/26.
//

import SwiftUI

struct MainBead: View {
    @State var isTouched = false
    @State var beadIndex = 0
    var body: some View {
        ZStack {
            circle(index: beadIndex)
            circle(index: beadIndex)
            circle(index: beadIndex)
            circle(index: beadIndex)
            circle(index: beadIndex)
            Text("\(beadIndex)").foregroundColor(.red)
        }
        .contentShape(Rectangle())
        .border(.black)
        .onTapGesture {
            countIndex()
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
    
    private func countIndex() {
        if beadIndex >= -2 {
            beadIndex = 2
        } else {
            beadIndex -= 1
        }
    }
    
}


struct MainBead_Previews: PreviewProvider {
    static var previews: some View {
        MainBead()
    }
}
