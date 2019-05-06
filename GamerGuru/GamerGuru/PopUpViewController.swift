//
//  PopUpViewController.swift
//  GamerGuru
//
//  Created by Chia Pingky on 06/05/19.
//  Copyright © 2019 Chia Pingky. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var zoomImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .init(white: 0, alpha: 0.9)
        zoomImage.image = UIImage(named: "mapImage")
    }
    
    @IBAction func closePopUp(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
