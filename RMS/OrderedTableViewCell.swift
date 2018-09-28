//
//  OrderedTableViewCell.swift
//  RMS
//
//  Created by Conan Chuang on 2018/9/28.
//  Copyright © 2018年 Mickey Lin. All rights reserved.
//

import UIKit

class OrderedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var orderedTitleLabel: UILabel!
    
    @IBOutlet weak var orderedPriceLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
