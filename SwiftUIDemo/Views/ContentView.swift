//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Meenakshi on 2022-01-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
