//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 24/04/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var disabled = true
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 20) {
                FadeInOutView(text: "In your canva, like in life", startTime: 0.5)
                FadeInOutView(text: "You can create what you like.", startTime: 2.5)
                FadeInOutView(text: "Then you can save it", startTime: 4.5)
                FadeInOutView(text: "or watch it disappear forever.", startTime: 6.5)
                FadeInOutView(text: "Think fast.", startTime: 8.5)
                FadeInOutView(text: "For every minute that passes", startTime: 10.5)
                FadeInOutView(text: "your work will start to fade away.", startTime: 12.5)
                NavigationLink(destination: {
                    ContentView()
                } , label: {
                    disabled ?
                    Image(systemName: "circle.fill")
                        .foregroundColor(.clear)
                        .font(.system(size: 60))
                        .shadow(color: .clear, radius: 8, x: 1, y: 1)
                        .animation(.easeInOut(duration: 1), value: disabled): Image(systemName: "circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 60))
                        .shadow(color: .white, radius: 8, x: 1, y: 1)
                        .animation(.easeInOut(duration: 1.2).repeatForever(autoreverses: true), value: disabled)
                })
                .disabled(disabled)
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .background(.black)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(15), execute: {
                disabled.toggle()
            })
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}
