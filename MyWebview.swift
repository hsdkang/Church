//
//  MyWebview.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import SwiftUI
import WebKit
import AuthenticationServices

struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        //uwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        // 웹뷰 로드
        webview.load(URLRequest(url: url))
        return webview
    }
    // 업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://youtu.be/wCcuKib32Jg")
    }
}
