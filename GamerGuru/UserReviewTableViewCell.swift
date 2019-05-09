//
//  UserReviewTableViewCell.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 07/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class UserReviewTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var reviewBg: UIView! {
        didSet {
            reviewBg.layer.cornerRadius = 8.0
            reviewBg.layer.masksToBounds = true
            reviewBg.clipsToBounds = true
        }
    }
    @IBOutlet weak var singleReviewBlock: UIView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
