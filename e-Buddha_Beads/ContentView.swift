//
//  ContentView.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 9/25/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var index = 0
    var gesture: some Gesture {
        DragGesture()
            .onEnded { _ in
                index = Int.random(in: 0...9)
                simpleSuccess()
            }
    }
    var body: some View {
        ZStack{
            Text("\(index)")
        }
        .contentShape(Rectangle())
        .gesture(gesture)
    }
}

private func simpleSuccess() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.success)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
