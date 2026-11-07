import SwiftUI
//copied
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        // bottom point
    path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        // top right
    path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        // top left
    path.closeSubpath()
    return path
    }
}

import Playgrounds

struct ContentView: View {
    var body: some View {
        //Text("Hello, world!")
        //    //.padding()
            
        ZStack {
            Color.blue.opacity(0.15)
                .ignoresSafeArea()
            ZStack{
                //Cone
                Triangle()
                    .fill(Color.brown)
                    .frame(width: 160, height: 200)
                    .offset(y: 150)
                    
                
                //Scoop1
                Circle()
                    .fill(Color.white)
                    .frame(width: 140, height: 140)
                    .offset(y: 30)
                //Scoop2
                Circle()
                    .fill(Color.brown)
                    .frame(width: 140, height: 120)
                    .offset(y: -90)
                //Cherry
                Circle()
                    .fill(Color.red)
                    .frame(width: 28, height: 28)
                    .offset(y: -150)
                
                //Sprinkles
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-13))
                    .offset(x: 18, y: -100)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 18, y: -150)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-23))
                    .offset(x: -9, y: -90)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: -18, y: -100)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 1, y: -100)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 3, y: -65)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: -10, y: -50)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: -23, y: -60)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: -36, y: -60)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: -47, y: -65)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: -40, y: -90)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 45, y: -90)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 45, y: -90)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x:36, y: -88)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 6, height: 18)
                    .rotationEffect(.degrees(-20))
                    .offset(x:36, y: -66)
            }
        }
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
