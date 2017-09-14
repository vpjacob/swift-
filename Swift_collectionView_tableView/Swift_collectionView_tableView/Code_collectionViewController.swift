//
//  Code_collectionViewController.swift
//  Swift_collectionView_tableView
//
//  Created by 刘毅 on 2017/9/12.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class Code_collectionViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    var collectionView:UICollectionView?
    let screenW:CGFloat = CGFloat(UIScreen.main.bounds.size.width)
    let screenH:CGFloat = CGFloat(UIScreen.main.bounds.size.height)

    override func viewDidLoad() {
        super.viewDidLoad()
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: (screenW * 0.5 - 1), height: (screenW * 0.5))
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 1
        self.view.backgroundColor = UIColor.gray
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: flowLayout)
        collectionView?.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "cell")
        collectionView?.dataSource = self;
        self.view.addSubview(collectionView!)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor = UIColor.red
        return cell
    }

}



