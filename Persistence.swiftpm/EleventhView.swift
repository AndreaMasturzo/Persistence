//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 24/04/22.
//

import SwiftUI

struct EleventhView: View {
    
    @State var disabled = true
    
    var body: some View {
        ModelView(text: "Welcome to", view: TitleView(), disabled: disabled)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                    disabled.toggle()
                })
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}
