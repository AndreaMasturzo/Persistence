//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 22/04/22.
//

import SwiftUI

struct ClearButton: View {
    
    @Binding var drawings: [Drawing]
    
    var body: some View {
        Button(action: {self.drawings = [Drawing]()}, label: {
            Image(systemName: "clear")
                .font(.system(size: 40))
                .foregroundColor(.white)
        })
    }
}
