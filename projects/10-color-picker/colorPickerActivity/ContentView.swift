// xcode: set sdk=iOS

import SwiftUI

struct ContentView: View {
    
    // Toggle values, Swift infers the type
    @State var isOn = true
    @State var colorIntensity = 1.0
    
    //variables for Toggle
    @State var redIsOn = true
    @State var greenIsOn = true
    @State var blueIsOn = true
    
    //starting variables for color sliders
    @State var redValue = 1.0
    @State var greenValue = 1.0
    @State var blueValue = 1.0
    
    var body: some View {
        
        VStack(spacing:40) {
            //Add rectangle
            Rectangle()
                .foregroundStyle(Color(red: redIsOn ? redValue : 0,
                                       green: greenIsOn ? greenValue : 0,
                                       blue : blueIsOn ? blueValue : 0))
            //Style so that it has a fixed height
            .frame(width: 350, height:220)
            .border(.black, width: 3)
            
           
            HStack{//Red Slider and Toggle()
                    //First the toggle
                Toggle(isOn:$redIsOn, label:
                        {Text("Turn on red")})
                    .labelsHidden()
                    .tint(.red)
                //Next the Slider
                Slider(value:$redValue, in:0...1)
                    .tint(redIsOn ? .red : .black)
            }
            
            HStack {//Green Toggle and Slider
                Toggle(isOn:$greenIsOn, label:
                        {Text("Turn on green")})
                    .labelsHidden()
                    .tint(.green)
                //Next the Slider
                Slider(value:$greenValue, in:0...1)
                    .tint(greenIsOn ? .green : .black)
            }
            
            HStack {//Blue Toggle and Slider
                Toggle(isOn:$blueIsOn, label:
                        {Text("Turn on blue")})
                    .labelsHidden()
                    .tint(.blue)
                //Next the Slider
                Slider(value:$blueValue, in:0...1)
                    .tint(blueIsOn ? .blue : .black)
            }
            Button("Reset") {
                redIsOn = true
                redValue = 1.0
                greenIsOn = true
                greenValue = 1.0
                blueIsOn = true
                blueValue = 1.0
            }.buttonStyle(.borderedProminent)
        }
        .padding(.horizontal,30)
        }
    }

#Preview {
    ContentView()
}
