//
//  ContentView.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 9/25/22.
//

import SwiftUI

struct ContentView: View {
    @State var isScaleDown = false
    @State var isMovingDown = false
    
    private func firstBead() -> some View {
        Circle()
            .frame(width: 80)
            .foregroundColor(Color(cgColor: CGColor(red: 245/255, green: 153/255, blue: 42/255, alpha: 1)))
            .offset(x: 0, y: -180)
    }
    private func secondBead() -> some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(Color(cgColor: CGColor(red: 235/255, green: 180/255, blue: 46/255, alpha: 1)))
            .offset(x: 0, y: -100)
    }
    private func lastSecondBead() -> some View {
        Circle()
            .frame(width: 80)
            .foregroundColor(Color(cgColor: CGColor(red: 245/255, green: 153/255, blue: 42/255, alpha: 1)))
            .offset(x: 0, y: 180)
    }
    private func lastBead() -> some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(Color(cgColor: CGColor(red: 235/255, green: 180/255, blue: 46/255, alpha: 1)))
            .offset(x: 0, y: 100)
    }
    private func mainBead() -> some View {
        Circle()
            .frame(width: 150)
            .foregroundColor(.orange)
            .scaleEffect(isScaleDown ? 0.5 : 1)
    }
    
    var body: some View {
        ZStack {
            firstBead()
            secondBead()
            lastSecondBead()
            lastBead()
            mainBead()
        }
        .onTapGesture {
            isScaleDown.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
