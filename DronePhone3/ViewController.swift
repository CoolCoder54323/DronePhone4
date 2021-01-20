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
    
    @IBOutlet weak var droneView: Webview!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        droneView.scrollView.isScrollEnabled = false;
        let urls = URL(string: "http://192.168.4.32:6006")!;
        droneView.load(URLRequest(url: urls))
        
    }
    
    
    
}
