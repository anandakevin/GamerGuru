//
//  RegisterSuccessViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 06/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class RegisterSuccessViewController: UIViewController {

    @IBOutlet weak var successImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let image = UIImage(named: "successBtn") else {
            return
        }
        successImage.image = image
        // Do any additional setup after loading the view.
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
