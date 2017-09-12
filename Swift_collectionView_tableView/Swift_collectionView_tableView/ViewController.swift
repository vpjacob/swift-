//
//  ViewController.swift
//  Swift_collectionView_tableView
//
//  Created by 刘毅 on 2017/9/12.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func xib_tableview(_ sender: Any) {
        self.navigationController?.pushViewController(Xib_tableViewController(), animated: true)
    }
    @IBAction func xib_collection(_ sender: Any) {
        self.navigationController?.pushViewController(Xib_collectionViewController(), animated: true)
    }
    @IBAction func code_tableview(_ sender: Any) {
        self.navigationController?.pushViewController(Code_tableViewController(), animated: true)
    }
    @IBAction func code_collection(_ sender: Any) {
        let vc = Code_collectionViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

