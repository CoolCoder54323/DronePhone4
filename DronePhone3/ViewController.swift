//
//  ViewController.swift
//  DronePhone3
//
//  Created by DENNIS DIXON on 1/18/21.
//
//
//  ViewController.swift
//  DronePhone
//
//  Created by Thomas Deng on 1/17/21.
//
import WebKit
import UIKit
import Foundation
class ViewController: UIViewController, WKNavigationDelegate{
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
         // 1
         let url = URL(string: "https://www.ioscreator.com/tutorials/webview-ios-tutorial")!
         webView.load(URLRequest(url: url))
           
         // 2
         let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
         toolbarItems = [refresh]
         navigationController?.isToolbarHidden = false
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
        }
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    
}
