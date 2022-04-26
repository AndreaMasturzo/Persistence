//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 24/04/22.
//

import SwiftUI

struct NinethView: View {
    
    @State var disabled = true
    
    var body: some View {
        ModelView(text: "Invest it wisely, keep creating", view: TenthView(), disabled: disabled)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                    disabled.toggle()
                })
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}
