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
    @State var isTouched = false
    var gesture: some Gesture {
        DragGesture()
            .onEnded { _ in
                withAnimation(.easeInOut) {
                    if index == -3 {
                        index = 3
                    } else {
                        index -= 1
                    }
                    simpleSuccess()
                }
            }
    }
    var body: some View {
        VStack{
            ZStack{
                Demo(index: index)
            }
            .gesture(gesture)
            
        }
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
