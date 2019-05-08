//
//  ReviewDetailViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 07/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class ReviewDetailViewController: UIViewController, CoachDetailGetter {
    func getUserReview(userReview: String) {
        reviewText.text = userReview
    }
    
    @IBOutlet weak var ratingValue: CosmosView!
    @IBOutlet weak var reviewText: UILabel!
    @IBOutlet weak var nameAndDateValue: UILabel!
    @IBOutlet weak var userReviewBox: UIView! {
        didSet {
            userReviewBox.layer.cornerRadius = 8.0
            userReviewBox.layer.masksToBounds = true
            userReviewBox.clipsToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
