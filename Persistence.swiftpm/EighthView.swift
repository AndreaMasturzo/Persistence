//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 24/04/22.
//

import SwiftUI

struct EighthView: View {
    
    @State var disabled = true
    
    var body: some View {
        ModelView(text: "Time is the only currency in our hands", view: NinethView(), disabled: disabled)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
                    disabled.toggle()
                })
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}
