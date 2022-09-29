//
//  Demo.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 2022/9/29.
//

import SwiftUI

struct Demo: View {
    @State var index = 0
    var body: some View {
        ZStack {
            
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                
            }
        }
    }
}

private func freshWidth(index: Int) -> CGFloat {
    switch index {
    case 2, -2:
        return CGFloat(80)
    case 1, -1:
        return CGFloat(100)
    case 0:
        return CGFloat(150)
    default:
        return CGFloat(150)
    }
}

private func counter(index: Int) {
    
}



struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
