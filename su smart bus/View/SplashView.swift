//
//  SplashScreenView.swift
//  su smart bus
//
//  Created by admin on 26/3/2566 BE.
//

import SwiftUI

struct SplashView: View {
    @State var isActive : Bool = false
    @State private var size = 0.1
    @State private var opacity = 0.2
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            MainTabView()
        } else {
            VStack {
                VStack {
                    Image("logosu-smart-bus")
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.3
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            .environmentObject(State1())
    }
}
