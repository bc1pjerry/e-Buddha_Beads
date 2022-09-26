//
//  Demo.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 9/26/22.
//

import SwiftUI

struct Demo: View {
    @State var isTap = false
    var body: some View {
        ZStack {
            Circle()
                .scaleEffect(CGSize(width: isTap ? 0.8 : 1, height: isTap ? 0.8 : 1))
                .offset(y: 50)
        }
        .onTapGesture {
            withAnimation(.linear) {
                isTap.toggle()
            }
        }
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
