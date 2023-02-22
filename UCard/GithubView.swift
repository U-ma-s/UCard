import SwiftUI

struct GithubView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(imageName).frame(width: 20, height: 20)
                        .padding()
                    Text(text)
                })
            .padding(.all)
    }
}

struct GithubView_Previews: PreviewProvider {
    static var previews: some View {
        GithubView(text: "https://github.com/U-ma-s", imageName: "github")
    }
}
