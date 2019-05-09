//
//  PopUpViewController.swift
//  GamerGuru
//
//  Created by Chia Pingky on 07/05/19.
//  Copyright © 2019 Chia Pingky. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var zoomImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.isNavigationBarHidden = true
        zoomImage.image = UIImage(named: "mapContent")
        self.view.backgroundColor = .init(white: 0, alpha: 0.85)
    }
    
    
    @IBAction func closePopUp(_ sender: UIButton) {
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.isNavigationBarHidden = false
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: false)
    }

}
