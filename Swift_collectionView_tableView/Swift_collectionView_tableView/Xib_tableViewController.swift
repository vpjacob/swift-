//
//  Xib_tableViewController.swift
//  Swift_collectionView_tableView
//
//  Created by 刘毅 on 2017/9/12.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class Xib_tableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView:UITableView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.plain)
        tableView?.dataSource = self
        self.view.addSubview(tableView!)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        code method
//        let cell = tableView.dequeueReusableCell(withIdentifier: "JJTableViewCell", for: indexPath) as! JJTableViewCell
//        cell.titleL.text = "cell----" + indexPath.row.description
//        return cell
        
        
        let cell = nibBundle?.loadNibNamed("JJTableViewCell", owner: self, options: nil)?.last as! JJTableViewCell
        cell.titleL.text = "cell----" + indexPath.row.description
        return cell
    }

}
