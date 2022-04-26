//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 23/04/22.
//

import SwiftUI

struct FadeInOutView: View {
    
    @State var characters: Array<String.Element>
    @State var opacity: Double = 0
    @State var baseTime: Double
    
    init(text: String, startTime: Double) {
        characters = Array(text)
        baseTime = startTime
    }
    
    var body: some View {
        HStack(spacing:0){
            ForEach(0..<characters.count, id:\.self) { num in
                Text(String(self.characters[num]))
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .opacity(opacity)
                    .animation(.easeInOut.delay( Double(num) * 0.05 ),
                               value: opacity)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + baseTime){
                opacity = 1
            }
        }
        .onTapGesture {
            opacity = 0
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                opacity = 1
            }
        }
    }
}
