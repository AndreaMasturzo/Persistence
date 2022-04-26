//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 23/04/22.
//

import SwiftUI

struct SecondView: View {
    
    @State var disabled = true
    
    var body: some View {
        ModelView(text: "Hello", view: ThirdView(), disabled: disabled)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {disabled.toggle()})
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}
