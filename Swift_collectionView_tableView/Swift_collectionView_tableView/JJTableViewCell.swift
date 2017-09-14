//
//  JJTableViewCell.swift
//  Swift_collectionView_tableView
//
//  Created by 刘毅 on 2017/9/14.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class JJTableViewCell: UITableViewCell {

    @IBOutlet weak var titleL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
