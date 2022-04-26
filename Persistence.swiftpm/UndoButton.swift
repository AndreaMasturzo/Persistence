//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 22/04/22.
//

import SwiftUI

struct UndoButton: View {
    
    @Binding var drawings: [Drawing]

    var body: some View {
        
        Button(action: { if self.drawings.count > 0 {
            self.drawings.removeLast()
        }}, label: {
            Image(systemName: "arrow.uturn.backward")
                .font(.system(size: 35))
                .foregroundColor(.white)
        })
    }
}
