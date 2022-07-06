//
//  GalleryApp.swift
//  Gallery
//
//  Created by Zeliha Uslu on 6.07.2022.
//

import SwiftUI

@main
struct GalleryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel())
                .onAppear {
                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}
