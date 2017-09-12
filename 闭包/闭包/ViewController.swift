//
//  ViewController.swift
//  闭包
//
//  Created by 刘毅 on 2017/9/8.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var secondVC:SecondViewController?
    var btn:UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let say:(String) -> Void = {
            (name:String) -> Void in
            print("hello\(name)")
            print("2 hi")
        }
        
        say("1 hi")
        
        HttpTools(name: "name") { 
            print("2 执行了")
        }
        
       btn = UIButton(type: .contactAdd)
        btn?.center = self.view.center
        self.view.addSubview(btn!)
        btn?.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
        
    }
    
    func btnAction() {
        secondVC = SecondViewController()
        secondVC?.changeText = {(name) -> Void in
            print("name block:/\\name")
        }
        self.present(secondVC!, animated: true, completion: nil)

    }

    
    func HttpTools(name:String,complated:()->()) {
        complated()
        print("1 执行了")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

