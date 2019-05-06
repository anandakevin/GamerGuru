//
//  ContentViewController.swift
//  GamerGuru
//
//  Created by Chia Pingky on 06/05/19.
//  Copyright © 2019 Chia Pingky. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var contentImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImage.image = UIImage(named: "mapImage")
    }
}
