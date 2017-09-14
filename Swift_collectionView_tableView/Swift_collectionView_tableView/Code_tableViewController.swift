//
//  Code_tableViewController.swift
//  Swift_collectionView_tableView
//
//  Created by 刘毅 on 2017/9/12.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class Code_tableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "label" + indexPath.row.description
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: self.view.frame, style: .plain)
        tableView?.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        tableView?.dataSource = self
        self.view.addSubview(tableView!)
        // Do any additional setup after loading the view.
    }

    var tableView:UITableView?
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
