//
//  ViewController.swift
//  GamerGuru
//
//  Created by Chia Pingky on 05/05/19.
//  Copyright © 2019 Chia Pingky. All rights reserved.
//

import UIKit

class GuideContentDetailViewController: UIViewController {

    @IBOutlet weak var contentImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImage.image = UIImage(named: "mapContent")
    }

    @IBAction func showPopUp(_ sender: UIButton) {
        self.hidesBottomBarWhenPushed = true
    }
}

