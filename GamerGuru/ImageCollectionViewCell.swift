//
//  ImageCollectionViewCell.swift
//  GamerGuru
//
//  Created by Fabian Vieri Pasulle on 03/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var coachImage: UIImageView!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var coachLabelGame: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var coachLabelName: UILabel!
    @IBOutlet weak var coachRating: CosmosView!
    @IBOutlet weak var gameImageCoach: UIImageView!
}
