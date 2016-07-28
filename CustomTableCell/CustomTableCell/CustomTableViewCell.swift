//
//  CustomTableViewCell.swift
//  CustomTableCell
//
//  Created by Rajan Maheshwari on 28/07/16.
//  Copyright © 2016 Rajan Maheshwari. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var labelBackgroundView: UIView!
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        labelBackgroundView.layer.borderWidth = 0.5
        labelBackgroundView.layer.borderColor = UIColor.lightGrayColor().CGColor
        labelBackgroundView.layer.shadowColor = UIColor.lightGrayColor().CGColor
        labelBackgroundView.layer.shadowOpacity = 0.8
        labelBackgroundView.layer.shadowRadius = 5.0
        labelBackgroundView.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        labelBackgroundView.layer.masksToBounds = false;
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
