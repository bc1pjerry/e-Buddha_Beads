//
//  CustomCircle.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 9/26/22.
//

import SwiftUI

struct BeadTemplate: View {
    @State var index = -2
    var body: some View {
        ZStack{
            circle(index: index)
        }
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.linear) {
                if index != -2 {
                    index -= 1
                } else {
                    index = 2
                }
            }
        }
    }
}

@ViewBuilder func circle(index: Int) -> some View {
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


struct CustomCircle_Previews: PreviewProvider {
    static var previews: some View {
        BeadTemplate(index: 0)
    }
}
