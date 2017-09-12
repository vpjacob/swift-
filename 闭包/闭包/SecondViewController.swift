//
//  SecondViewController.swift
//  闭包
//
//  Created by 刘毅 on 2017/9/8.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

typealias changUserName = (String) -> Void

class SecondViewController: UIViewController {

   public var changeText:changUserName?
    
    var btn:UIButton?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
        btn = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        btn?.center = self.view.center
        btn?.titleLabel?.text = "sss"
        btn?.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(btn!)
        btn?.addTarget(self, action: #selector(btnClickAction), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }

    func btnClickAction() {
        if (changeText != nil) {
            changeText!("ss")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
