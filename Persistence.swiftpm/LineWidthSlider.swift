//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 22/04/22.
//

import SwiftUI

struct LineWidthSlider: View {
    
    @Binding var lineWidth: CGFloat

    var body: some View {
        
        UISlider.appearance().tintColor = .white
        
        return VStack {
            
            Slider(value: $lineWidth, in: 1.0...15.0, step: 1.0)
                .rotationEffect(Angle(degrees: -90))
                .frame(width: 400, height: 400)
            Image(systemName: "pencil.tip")
                .font(.system(size: 50))
                .foregroundColor(.white)
        }
    }
}
