//
//  CoachListViewController.swift
//  GamerGuru
//
//  Created by Fabian Vieri Pasulle on 07/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class CoachListViewController: UIViewController {
    var coachImageArr = ["coach","coach3","coach2","coach3","coach4"]
    var coachName = ["Fabian Vieri", "Hedianto", "Victor Wijaya", "Farico Novenio", "Chia Pingky"]
    var coachOrigin = ["flag1","flag2","flag3","flag2","flag3"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension CoachListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coachImageArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "coachList", for: indexPath) as! CoachListCell
        cell.coachPicture.image = UIImage(named: coachImageArr[indexPath.row])
        cell.labelCoachName.text = coachName[indexPath.row]
        cell.coachOrigin.image = UIImage(named: coachOrigin[indexPath.row])
        cell.labelCoachName.adjustsFontSizeToFitWidth = true
        cell.buttonPrice.layer.cornerRadius = 5
        cell.buttonPrice.layer.masksToBounds = true
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.masksToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
}
