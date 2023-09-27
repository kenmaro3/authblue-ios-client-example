import SwiftUI
import Foundation


struct Parent: View{
    
    var body: some View {
        NavigationView{
            TabView{
                QrScanScreen()
                    .tabItem {
                        Image(systemName: "qrcode.viewfinder")
                        Text("QRScan")
                    }
                
                ClickLinkScreen()
                    .tabItem {
                        Image(systemName: "link")
                        Text("Link")
                    }
            }
            .accentColor(.black)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}
