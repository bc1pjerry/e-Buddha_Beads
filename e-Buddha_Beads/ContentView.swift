//
//  ContentView.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 9/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BeadTemplate(index: 2)
            BeadTemplate(index: 1)
            BeadTemplate(index: 0)
            BeadTemplate(index: -1)
            BeadTemplate(index: -2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
