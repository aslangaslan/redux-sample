//
//  ViewController.swift
//  CorporateBanking
//
//  Created by Giray Gençaslan on 22.09.2019.
//  Copyright © 2019 Giray Gençaslan. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.load(URLRequest(url: URL(string: "https://google.com")!))
    }
}

