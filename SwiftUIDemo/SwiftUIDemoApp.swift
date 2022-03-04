//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Meenakshi on 2022-01-10.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
