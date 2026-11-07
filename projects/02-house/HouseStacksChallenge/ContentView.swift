import SwiftUI

//copied

    struct Triangle: Shape {
        func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY)) // top point
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // bottomright
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) // bottomleft
        path.closeSubpath()
        return path
        }
}

import Playgrounds


struct ContentView: View {
    var body: some View {
        
        ZStack {
            //bluebackground
            Color.blue.opacity(0.2)
                .ignoresSafeArea()
            //Sun
            Circle()
            .fill(Color.yellow)
            .frame(width: 60, height: 60)
            .offset(x: 130, y: -260)
            
            //house content
                ZStack {
                    // square building
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 200, height: 150)
                        .offset(y: 50)
                    
                    // triangle roof
                    Triangle()
                        .fill(Color.red)
                        .frame(width: 220, height: 100)
                        .offset(y: -75)
                    
                    //door
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.brown)
                        .frame(width: 40, height: 100)
                        .offset(y: 70)
                    
                    //doorknob
                    Circle()
                        .frame(width:10)
                        .offset(x:8 , y:70)
                    //window
                    Rectangle()
                        .fill(Color.cyan)
                        .frame(width: 40, height: 40)
                        .overlay(
                            Rectangle()
                                .stroke(Color.white, lineWidth: 3)
                        )
                        .offset(x: -60, y: 30)
                    // Add a second window on the right side
                    Rectangle()
                        .fill(Color.cyan)
                        .frame(width: 40, height: 40)
                        .overlay(
                            Rectangle()
                                .stroke(Color.white, lineWidth: 3)
                        )
                        .offset(x: 60, y: 30)
                }
        }
        //house caption
        VStack (alignment:.leading){
            Text("Hello, house!")
            
               // .padding(4)
        }
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
