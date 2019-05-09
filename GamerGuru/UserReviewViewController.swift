//
//  UserReviewViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 07/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class UserReviewViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.register(UserReviewHeadTableViewCell.self, forCellReuseIdentifier: "summaryReviewCell")
//        self.tableView.register(UserReviewTableViewCell.self, forCellReuseIdentifier: "reviewCell")
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

extension UserReviewViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "summaryReviewCell", for: indexPath)
//            cell.
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "reviewCell", for: indexPath)
            cell.layer.cornerRadius = 10.0
            cell.layer.masksToBounds = true
            cell.clipsToBounds = true
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "summaryReviewCell", for: indexPath)
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 160.0
        } else {
            return 200.0
        }
    }
}
