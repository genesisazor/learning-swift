import SwiftUI
import Playgrounds

struct ContentView: View {
    var body: some View {
        HStack(spacing: 0){
        
            // MARK: - Spine
            // Spine goes here
            RoundedRectangle(cornerRadius: 6)
                .fill(Color.red)
                .frame(width:30, height:220)
            //overlay to create black border
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.black, lineWidth: 3)
                )
            
            // MARK: - Cover
            // Cover goes here
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.blue)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 3)
                    )
                //Text bars
                VStack(spacing: 8) {
                    //Title bar styling
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.yellow)
                        .frame(height:40)
                        .overlay(RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.black, lineWidth: 2)
                        )
                        .overlay(
                            Text("Book of Swift")
                                .font(.system(size:16 , weight: .bold))
                                .foregroundColor(.white)
                              
                        )
                    
                   
                    
                    Spacer() //Creates space between title and author boxes
                    
                    //Author bar styling
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.yellow)
                        .frame(height: 30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4).stroke(Color.white, lineWidth: 3))
                        .overlay(
                            Text("By MR. Genesis and Juan")
                                .font(.system(size: 12, weight: .black))
                        )
                    
                   
                }
                .padding(16)
            }
            
            .frame(width: 200, height: 220 )
            // MARK: - Pages Edge
            // Pages edge goes here
            Rectangle()
                .fill(Color.white)
                .frame(width: 40, height: 40)
        }
        //Text("Hello, world!")
        //    .padding()
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
