//
//  coachListCell.swift
//  GamerGuru
//
//  Created by Fabian Vieri Pasulle on 07/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class CoachListCell: UITableViewCell {
    
    @IBOutlet weak var coachPicture: UIImageView!
    @IBOutlet weak var buttonPrice: UIButton!
    @IBOutlet weak var labelCoachName: UILabel!
    @IBOutlet weak var coachOrigin: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }

}
