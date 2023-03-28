import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct ContentView: View {
    let url = URL(string: "https://www.myoffice.rs/ios/page.php?code=" + (UIDevice.current.identifierForVendor?.uuidString ?? "unknown"))!
    var body: some View {
        WebView(request: URLRequest(url: url))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

