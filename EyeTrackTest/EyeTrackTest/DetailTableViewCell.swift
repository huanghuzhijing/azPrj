//
//  DetailTableViewCell.swift
//  EyeTrackTest
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019 edz. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell,NibLoadable,RegisterCellFromNib {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userIcon.layer.cornerRadius = 25
        userIcon.clipsToBounds = true
        img.layer.cornerRadius = 10
        img.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var userInfo: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    
}
