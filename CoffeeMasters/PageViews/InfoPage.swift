import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
  func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
    print(message.body)
  }
}

struct WebView: UIViewRepresentable {
  func makeUIView(context: Context) -> WKWebView {
    let config = WKWebViewConfiguration()
    config.userContentController.add(WebInterfaceDialogs() , name: "alert")
    return WKWebView(frame: .zero, configuration: config)
  }
  
  func updateUIView(_ webView: WKWebView, context: Context) {
    let url = URL(string: "https://ahmedeid.cloud")!
    webView.load(URLRequest(url: url))
    
    let name = UserDefaults.standard.string(forKey: "name") ?? ""
    webView.evaluateJavaScript("injectFormData('\(name)')")
  }
}


struct InfoPage: View {
  var body: some View {
    VStack {
      AppTitle()
      WebView()
    }
  }
}
