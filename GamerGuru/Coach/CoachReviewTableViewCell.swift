//
//  CoachReviewTableViewCell.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 08/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class CoachReviewTableViewCell: UITableViewCell {

    @IBOutlet weak var userReviewBox: UIView! {
        didSet {
            userReviewBox.layer.cornerRadius = 8.0
            userReviewBox.layer.masksToBounds = true
            userReviewBox.clipsToBounds = true
        }
    }
    @IBOutlet weak var fiveStarProgressView: UIProgressView! {
        didSet {
            fiveStarProgressView.setProgress(0.75, animated: true)
//            fiveStarProgressView.transform = fiveStarProgressView.transform.scaledBy(x: 1, y: 10)
//            fiveStarProgressView.layer.cornerRadius = 8
//            fiveStarProgressView.clipsToBounds = true
//            fiveStarProgressView.layer.sublayers![1].cornerRadius = 8
//            fiveStarProgressView.subviews[1].clipsToBounds = true
        }
    }
    @IBOutlet weak var fourStarProgressView: UIProgressView! {
        didSet {
            fourStarProgressView.setProgress(0.1, animated: true)
//            fourStarProgressView.layer.cornerRadius = 8
//            fourStarProgressView.clipsToBounds = true
//            fourStarProgressView.layer.sublayers![1].cornerRadius = 8
//            fourStarProgressView.subviews[1].clipsToBounds = true
        }
    }
    @IBOutlet weak var threeStarProgressView: UIProgressView! {
        didSet {
            threeStarProgressView.setProgress(0.1, animated: true)
//            threeStarProgressView.layer.cornerRadius = 8
//            threeStarProgressView.clipsToBounds = true
//            threeStarProgressView.layer.sublayers![1].cornerRadius = 8
//            threeStarProgressView.subviews[1].clipsToBounds = true
        }
    }
    @IBOutlet weak var twoStarProgressView: UIProgressView! {
        didSet {
            twoStarProgressView.setProgress(0.1, animated: true)
//            twoStarProgressView.layer.cornerRadius = 8
//            twoStarProgressView.clipsToBounds = true
//            twoStarProgressView.layer.sublayers![1].cornerRadius = 8
//            twoStarProgressView.subviews[1].clipsToBounds = true
        }
    }
    @IBOutlet weak var oneStarProgressView: UIProgressView! {
        didSet {
            oneStarProgressView.setProgress(0.2, animated: true)
//            oneStarProgressView.layer.cornerRadius = 8
//            oneStarProgressView.clipsToBounds = true
//            oneStarProgressView.layer.sublayers![1].cornerRadius = 8
//            oneStarProgressView.subviews[1].clipsToBounds = true
        }
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
