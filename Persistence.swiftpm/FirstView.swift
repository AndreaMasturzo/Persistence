//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 23/04/22.
//

import SwiftUI

struct FirstView: View {
    
    @State var disabled = true
    
    var body: some View {
        ModelView(text: "", view: SecondView(), disabled: disabled)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                    disabled.toggle()
                })
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

