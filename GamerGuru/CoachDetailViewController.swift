//
//  CoachDetailViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 06/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

struct reviews{
    var username = String()
    var dateReview = Date()
    var reviewText = String()
    var reviewValue = Int()
}

class CoachDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CoachAboutDelegate {
    var userReviews = [reviews]()
    func ReadMoreButtonTapped(content: UILabel) {
        let indexPath = IndexPath(row: 1, section: 0)
        print("\(expanded) to \(!expanded)")
        expanded = !expanded
        aboutLabel = content
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    let screenSize: CGRect = UIScreen.main.bounds
    var expanded: Bool = false, aboutLabel: UILabel = UILabel()
    var achievementsLabel:UILabel = UILabel()
    var coachReviewDelegate : ReviewDetailViewController?
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath)
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "aboutCoachCell", for: indexPath) as? CoachAboutTableViewCell else {
                return UITableViewCell()
            }
            print(cell.bounds.size.height)
            if expanded {
                cell.readMoreButton.setTitle("Read Less", for: .normal)
            } else {
                cell.readMoreButton.setTitle("Read More", for: .normal)
            }
            cell.delegate = self
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "reviewCoachCell", for: indexPath)
            return cell
        case 3:
            print("dapetin content")
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "achievementsCoachCell", for: indexPath) as? CoachAchievementsTableViewCell else {
                return UITableViewCell()
            }
            print("masih mau ambil")
//            self.achievementsLabel = cell.achievementsListLabel
            print("berhasil diambil \(achievementsLabel.text)")
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200.0
        } else if indexPath.row == 1 {
            if expanded {
                return aboutLabel.intrinsicContentSize.height + 75
            } else if expanded == false {
                return 150.0
            }
            return 150.0
        } else if indexPath.row == 2 {
            return 390.0
        } else {
            
            print("Set heihgt")
//            return achievementsLabel.intrinsicContentSize.height
            return 250.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 68.0
        tableView.rowHeight = UITableView.automaticDimension
//        self.yourView.layer.borderWidth = 1
//        self.yourView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        
    }
    
}

protocol CoachDetailGetter {
    func getUserReview(userReview: String)
}
