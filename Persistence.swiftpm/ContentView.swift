import SwiftUI

struct ContentView: View {
    
    @State private var currentDrawing: Drawing = Drawing()
    @State private var drawings: [Drawing] = [Drawing]()
    @State private var color: Color = Color.white
    @State private var lineWidth: CGFloat = 3.0
    
    var body: some View {
        
        ZStack {
            DrawingPad(currentDrawing: $currentDrawing,
                       drawings: $drawings,
                       color: $color,
                       lineWidth: $lineWidth)
            
            VStack(spacing: -100) {
                HStack {
                    
                    ClearButton(drawings: $drawings)
                        .padding()
                    
                    UndoButton(drawings: $drawings)
                        .padding()
                    
                    Spacer()
                    
                        .padding(.trailing)
                    ColorPicker(selection: $color, supportsOpacity: false, label: {})
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 35)
                }
                Spacer()
                HStack {
                    LineWidthSlider(lineWidth: $lineWidth)
                        .padding(.leading, -155)
                    Spacer()
                }
                .ignoresSafeArea()
                Spacer()
            }
        }
        .onAppear(perform: {
                removeDrawing()
        })
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
    
    func removeDrawing() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(60), execute: {
            if self.drawings.count > 0 {
                self.drawings.removeFirst()
                removeDrawing()
            }
        })
    }
    

    
}

