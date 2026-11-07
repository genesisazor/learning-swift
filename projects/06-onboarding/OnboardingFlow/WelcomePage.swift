import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint) //makes it blue

                Image(systemName:"figure.2.and.child.holdinghands")
                    .font(.system(size:70))
                    .foregroundStyle(.white)
            }
                            
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
              //  .border(.black, width:1.5)
            
            Text("Description text")
                .font(.title2)
        }
      //  .border(.red,width: 1.5)
        .padding()
     //   .border(.blue, width: 1.5)
            //Text("This is a description string that I am adding words to in order to make it wrap to another line.")
            
            //    .multilineTextAlignment(alignment:textAlignment)
            
        
    }
      //  .border
}

#Preview {
    WelcomePage()
}
