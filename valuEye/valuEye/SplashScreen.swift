//
//  SplashScreen.swift
//  valuEye
//
//  Created by Rutwij Patil on 16/10/22.
//

import SwiftUI
struct SplashView: View {
    
    // 1.
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            // 2.
            if self.isActive {
                // 3.
                ContentView()
            } else {
                // 4.
                flowerView()
            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
