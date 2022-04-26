//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 23/04/22.
//

import SwiftUI

struct ThirdView: View {
    
    @State var disabled = true
    
    var body: some View {
        ModelView(text: "Whatever you are doing", view: FourthView(), disabled: disabled)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {disabled.toggle()})
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}
