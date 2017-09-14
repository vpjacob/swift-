//
//  Xib_collectionViewController.swift
//  Swift_collectionView_tableView
//
//  Created by 刘毅 on 2017/9/12.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class Xib_collectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var collectionView:UICollectionView?
    let screenW:CGFloat = CGFloat(UIScreen.main.bounds.size.width)
    let screenH:CGFloat = CGFloat(UIScreen.main.bounds.size.height)

    override func viewDidLoad() {
        super.viewDidLoad()
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: screenW * 0.5 - 1, height: 100)
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 1
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: flowLayout)
        collectionView?.dataSource = self
        collectionView?.delegate = self
        self.view.addSubview(collectionView!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
//        let cell = nibBundle?.loadNibNamed("JJCollectionViewCell", owner: self, options: nil)?.last as! JJCollectionViewCell
        
//        cell.nameLabel.text = "collectionCell" + indexPath.row.description
//        cell.backgroundColor = UIColor.gray

        let cell = nibBundle?.loadNibNamed("JJCollectionViewCell", owner: self, options: nil)?.last
        
        
        
        return cell! as! JJCollectionViewCell
    }


}
