//
//  CoachAboutTableViewCell.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 07/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class CoachAboutTableViewCell: UITableViewCell {
    var isLabelAtMaxHeight = false
    @IBOutlet weak var readMoreButton: UIButton!
    @IBOutlet weak var aboutView: UIView!
    @IBOutlet weak var lblHeight: NSLayoutConstraint!
    @IBOutlet weak var descriptionContent: UILabel!
    @IBAction func readMoreButtonAction(_ sender: UIButton) {
        delegate?.ReadMoreButtonTapped(content: descriptionContent)
    }
    var delegate : CoachAboutDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

protocol CoachAboutDelegate {
    func ReadMoreButtonTapped(content: UILabel)
}
