//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 24/04/22.
//

import SwiftUI

struct TitleView: View {
    
    @State var disabled = true
    
    var body: some View {
        TitleModelView(text: "PERSISTENCE", view: OnboardingView(), disabled: disabled)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {disabled.toggle()})
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}
