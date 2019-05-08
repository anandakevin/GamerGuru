//
//  CoachHeaderTableViewCell.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 08/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class CoachHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var bookButton: UIButton! {
        didSet {
            bookButton.layer.cornerRadius = 6.0
            bookButton.layer.masksToBounds = true
            bookButton.clipsToBounds = true
        }
    }
    @IBAction func bookButtonTapped(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
