import SwiftUI
import Foundation


struct ClickLinkScreen: View{
    private let link = "https://authblueprod.page.link/agreement?client_name=TestClient1&client_id=vGSKhQRk0aSzVB1HJ2TlZLmk&query_id=1&uid=8b1bc946-9a12-4ef9-80b1-cac7a01d35bb"

    var body: some View {
        GeometryReader{
            let size = $0.size
            VStack(
                alignment: HorizontalAlignment.center){
                Text(link)
                    .padding()
                
                Button(action: {
                    UIApplication.shared.open(URL(string: link)!)
                }) {
                    
                    Text("Go to Link")
                        .fontWeight(.semibold)
                        .contentTransition(.identity)
                        .foregroundColor(.white)
                        .frame(width: size.width*0.4)
                        .padding(.vertical, 15)
                        .background{
                            Capsule()
                                .fill(.black)
                        }
                }
                .frame(maxWidth: .infinity)
            }
                .frame(maxHeight: .infinity)
        }
    }
    
}
