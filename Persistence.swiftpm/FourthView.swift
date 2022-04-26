//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 23/04/22.
//

import SwiftUI

struct FourthView: View {
    
    @State var disabled = true
    
    var body: some View {
        ModelView(text: "Stop for a second", view: FifthView(), disabled: disabled)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {disabled.toggle()})
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}
