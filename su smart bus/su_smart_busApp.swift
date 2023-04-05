//
//  su_smart_busApp.swift
//  su smart bus
//
//  Created by admin on 24/3/2566 BE.
//

import SwiftUI

@main
struct su_smart_busApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(State1())
        }
    }
}
