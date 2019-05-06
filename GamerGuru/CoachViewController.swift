//
//  CoachViewController.swift
//  GamerGuru
//
//  Created by Fabian Vieri Pasulle on 29/04/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class CoachViewController: UIViewController {

    
    @IBOutlet weak var coachBackgroundView: UIView!
    @IBOutlet weak var progressLesson: UIProgressView!
    @IBOutlet weak var progressLabelView: UIView!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var coachDetailButton: UIButton!
    @IBOutlet weak var findCoachButton: UIButton!
    @IBOutlet weak var noCoachView: UIView!
    @IBOutlet weak var coachNameLabel: UILabel!
    @IBOutlet weak var coachNameView: UIView!
    @IBOutlet weak var reportButton: UIButton!
    
    @IBAction func chatClick(_ sender: UIButton) {
        noCoachView.isHidden = false
        coachNameLabel.text = "No coach"
    }
    
    @IBAction func coachDetailClick(_ sender: UIButton) {
        
    }
    
    @IBAction func reportActionClick(_ sender: UIButton) {
        let alert = UIAlertController(title: "Report Coach", message: "Comment", preferredStyle: .alert)
        let reportAction = UIAlertAction(title: "Report", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addTextField()
        alert.addAction(cancelAction)
        alert.addAction(reportAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
<<<<<<< HEAD
    
    func configView() {
        progressLesson.transform = progressLesson.transform.scaledBy(x: 1, y: 10)
        coachNameLabel.adjustsFontSizeToFitWidth = true
        
        let border = CALayer()
        border.frame = CGRect(x: 20, y: progressLabelView.frame.size.height, width: progressLabelView.frame.size.width - 40, height: 1.0)
        border.backgroundColor = UIColor.lightGray.cgColor
        progressLabelView.layer.addSublayer(border)
        
        chatButton.layer.borderWidth = 1.0
        chatButton.layer.borderColor = UIColor.gray.cgColor
        coachDetailButton.layer.borderWidth = 1.0
        coachDetailButton.layer.borderColor = UIColor.gray.cgColor
        
        findCoachButton.layer.cornerRadius = 5
        findCoachButton.layer.masksToBounds = true
        noCoachView.isHidden = true
        
        let anotherBorder = CALayer()
        anotherBorder.frame = CGRect(x: 0, y: coachNameView.frame.size.height - 1, width: coachNameView.frame.size.width, height: 1.0)
        anotherBorder.backgroundColor = UIColor.lightGray.cgColor
        coachNameView.layer.addSublayer(anotherBorder)
=======

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
>>>>>>> master
    }
}
