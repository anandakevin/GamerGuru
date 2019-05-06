//
//  GuideTopicTableViewCell.swift
//  GamerGuru
//
//  Created by Chia Pingky on 05/05/19.
//  Copyright © 2019 Chia Pingky. All rights reserved.
//

import UIKit

class GuideTopicTableViewCell: UITableViewCell {

    @IBOutlet weak var cellBackground: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
