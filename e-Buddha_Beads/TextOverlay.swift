//
//  TextOverlay.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 2022/9/30.
//

import SwiftUI

struct TextOverlay: View {
    var displayText: String
    @State var Yoffset: CGFloat = 0
    @State var opacity: Double = 1
    var body: some View {
        Text(displayText)
            .font(.largeTitle)
            .foregroundColor(.orange)
            .opacity(opacity)
            .offset(x: 0, y: Yoffset)
            .onTapGesture {
                withAnimation(.easeOut(duration: 0.3)) {
                    showText()
                }
            }
    }
    private func showText() {
        Yoffset = -30
        opacity = 0
    }
}

struct TextOverlay_Previews: PreviewProvider {
    static var previews: some View {
        TextOverlay(displayText: "灵力+1")
    }
}
