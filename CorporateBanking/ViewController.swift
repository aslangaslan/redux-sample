//
//  ViewController.swift
//  CorporateBanking
//
//  Created by Giray Gençaslan on 22.09.2019.
//  Copyright © 2019 Giray Gençaslan. All rights reserved.
//

import UIKit
import WebKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber, WKNavigationDelegate {
    
    typealias StoreSubscriberStateType = AppState
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.navigationDelegate = self
        
        mainStore.subscribe(self)
        mainStore.dispatch(openUrl())
        activityInd.startAnimating()
    }
    
    func newState(state: AppState) {
        if let urlRequest = state.urlRequest {
            webView.load(urlRequest)
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityInd.stopAnimating()
    }
}

