//
//  ContentView.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 9/25/22.
//

import SwiftUI

struct ContentView: View {
    @State var isTap = false
    
    private func firstBead() -> some View {
        Circle()
            .frame(width: 80)
            .foregroundColor(Color("ThirdBead"))
            .offset(x: 0, y: -180)
    }
    private func secondBead() -> some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(Color("SecondBead"))
            .offset(x: 0, y: -100)
    }
    private func mainBead() -> some View {
        Circle()
            .frame(width: 150)
            .foregroundColor(.orange)
            
    }
    var body: some View {
        ZStack {
            firstBead()
            secondBead()
            mainBead()
        }
        .onTapGesture {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
