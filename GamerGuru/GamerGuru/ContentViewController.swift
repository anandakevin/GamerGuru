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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
