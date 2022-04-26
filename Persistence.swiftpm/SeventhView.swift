//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 23/04/22.
//

import SwiftUI

struct SeventhView: View {
    
    @State var disabled = true
    
    var body: some View {
        ModelView(text: "Everything we think and we do is going to expire", view: EighthView(), disabled: disabled)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
                    disabled.toggle()
                })
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}
