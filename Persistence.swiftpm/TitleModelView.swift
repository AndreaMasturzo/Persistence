//
//  File.swift
//  Persistence
//
//  Created by Andrea Masturzo on 24/04/22.
//

import SwiftUI

struct TitleModelView<TargetView: View>: View {
    
    var text: String
    var view: TargetView
    var disabled: Bool
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                
                VStack {
                    Spacer()
                    
                    TitleFadeInOut(text: text, startTime: 1.5)
                                           
                    
                    HStack {
                        
                        Spacer()
                        NavigationLink(destination: view, label: {
                            disabled ?
                            Image(systemName: "circle.fill")
                                .foregroundColor(.black)
                                .font(.system(size: 60))
                                .shadow(color: .black, radius: 8, x: 1, y: 1)
                                .animation(.easeInOut(duration: 1), value: disabled): Image(systemName: "circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 60))
                                .shadow(color: .white, radius: 8, x: 1, y: 1)
                                .animation(.easeInOut(duration: 1.2).repeatForever(autoreverses: true), value: disabled)
                        })
                        .disabled(disabled)
                        .padding()
                        .padding(.trailing)
                        Spacer()
                    }
                    .padding(.leading)
                    Spacer()
                }
                .frame(width: geo.size.width, height: geo.size.height)
                .background(.black)
                .multilineTextAlignment(.center)
                
            }
        }
        .navigationViewStyle(.stack)
    }
}
