//
//  ViewController.swift
//  01
//
//  Created by vpjacob on 2017/9/2.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {
    let vie = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        vie.backgroundColor = UIColor.red
        
        
        let webView = UIWebView(frame: vie.frame)
        webView.loadRequest(URLRequest(url: URL(string: "https://www.baidu.com")!))
        self.view.addSubview(webView)
        webView.delegate = self
        self.view.addSubview(vie)
        
    }
    
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        vie.removeFromSuperview()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

