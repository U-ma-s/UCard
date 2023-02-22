import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("myPic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140.0, height: 165.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Yuma")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "090-123-4567", imageName: "phone.fill")
                InfoView(text: "abcd@gmail.com", imageName: "envelope.fill")
                GithubView(text: "https://github.com/U-ma-s", imageName: "github")
            }
            
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct InfoView: View {
//
//    let text: String
//    let imageName: String
//
//    var body: some View {
//        RoundedRectangle(cornerRadius: 50)
//            .fill(Color.white)
//            .frame(height: 50)
//            .overlay(
//                HStack{
//                    Image(systemName: imageName)
//                        .foregroundColor(.green)
//                    Text(text)
//                })
//            .padding(.all)
//    }
//}
