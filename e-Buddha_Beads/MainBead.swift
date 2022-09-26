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
        VStack {
            circle(index: beadIndex)
            Text("\(beadIndex)")
        }
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
                .scaleEffect(CGSize(width: 0.5, height: 0.5))
                .offset(x: 0, y: 100)
        case 1:
            Circle()
                .frame(width: 100)
                .foregroundColor(Color("SecondBead"))
                .scaleEffect(CGSize(width: 0.8, height: 0.8))
                .offset(x: 0, y: 50)
        case 0:
            Circle()
                .frame(width: 150)
                .foregroundColor(.orange)
        case -1:
            Circle()
                .frame(width: 100)
                .foregroundColor(Color("SecondBead"))
                .scaleEffect(CGSize(width: 0.8, height: 0.8))
                .offset(x: 0, y: -50)
        case -2:
            Circle()
                .frame(width: 80)
                .foregroundColor(Color("ThirdBead"))
                .scaleEffect(CGSize(width: 0.5, height: 0.5))
                .offset(x: 0, y: -100)
        default:
            Circle()
        }
    }
    
    private func countIndex() {
        if beadIndex == -2 {
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
