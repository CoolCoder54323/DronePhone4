//
//  Webview.swift
//  DronePhone3
//
//  Created by Thomas Deng on 1/17/21.
//
import UIKit
import WebKit
class Webview: WKWebView{

    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let url = URL(string: "https://www.ioscreator.com/tutorials/webview-ios-tutorial")!
        webView.load(URLRequest(url: url))
        }
  
    
}
