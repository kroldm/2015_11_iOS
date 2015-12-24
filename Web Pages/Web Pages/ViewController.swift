//
//  ViewController.swift
//  Web Pages
//
//  Created by HackerU on 24/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView:WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let preferences = WKPreferences()
        preferences.javaScriptEnabled = true
        let configuration = WKWebViewConfiguration()
        configuration.preferences = preferences
        
        webView = WKWebView(frame: view.bounds, configuration: configuration)
        if let theWebView = webView{
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

