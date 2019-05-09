//
//  ProfileViewController.swift
//  GamerGuru
//
//  Created by Fabian Vieri Pasulle on 08/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var dobTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var reportView: UIView!
    @IBOutlet var editTF: [UIButton]!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var changeImageButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    var logoGame = ["game1","game2","game3","game4","game5"]
    var levelArr = ["Level : Intermediate","Level : Beginner","Level : Beginner","Level : Intermediate","Level : Expert"]
    var lastEdited = ["Last Edited By : Fabian Vieri","Last Edited By : Fabian Vieri","Last Edited By : Heinrich Reagan","Last Edited By : Chia Pingky","Last Edited By : Hedianto"]
    var progress:[Float] = [0.5,0.2,0.2,0.5,0.8]
    
    @IBAction func editName(_ sender: Any) {
        nameTF.isEnabled = true
    }
    
    @IBAction func editUsername(_ sender: Any) {
        usernameTF.isEnabled = true
    }
    
    @IBAction func editDOB(_ sender: Any) {
        dobTF.isEnabled = true
    }
    
    @IBAction func editPhone(_ sender: Any) {
        phoneTF.isEnabled = true
    }
    
    @IBAction func editEmail(_ sender: Any) {
        emailTF.isEnabled = true
    }
    
    @IBAction func editProfile(_ sender: Any) {
        doneButton.isHidden = false
        changeImageButton.isHidden = false
        for buttons in editTF  {
            buttons.isHidden = false
        }
        editButton.setTitle("Change Password", for: .normal)
        segmentedControl.isHidden = true
    }
    
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            reportView.isHidden = true
        } else {
            reportView.isHidden = false
        }
    }
    @IBAction func doneEdit(_ sender: UIButton) {
        doneButton.isHidden = true
        editButton.setTitle("Edit Profile", for: .normal)
        segmentedControl.isHidden = false
        changeImageButton.isHidden = true
        for buttons in editTF  {
            buttons.isHidden = true
        }
        nameTF.isEnabled = false
        usernameTF.isEnabled = false
        dobTF.isEnabled = false
        phoneTF.isEnabled = false
        emailTF.isEnabled = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    func configView() {
        nameTF.isEnabled = false
        usernameTF.isEnabled = false
        dobTF.isEnabled = false
        phoneTF.isEnabled = false
        emailTF.isEnabled = false
        editButton.layer.cornerRadius = 5
        editButton.layer.masksToBounds = true
        editButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 18, bottom: 4, right: 18)
        editButton.titleLabel?.adjustsFontSizeToFitWidth = true
        for buttons in editTF  {
            buttons.isHidden = true
        }
        reportView.isHidden = true
        
        doneButton.isHidden = true
        doneButton.layer.cornerRadius = 5
        doneButton.layer.masksToBounds = true
        changeImageButton.layer.cornerRadius = 5
        changeImageButton.layer.masksToBounds = true
        changeImageButton.isHidden = true
    }
}

extension ProfileViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logoGame.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lesson", for: indexPath) as! LessonTableViewCell
        cell.gameImage.image = UIImage(named: logoGame[indexPath.row])
        cell.levelLabel.text = levelArr[indexPath.row]
        cell.lastEditedLabel.text = lastEdited[indexPath.row]
        cell.levelLabel.adjustsFontSizeToFitWidth = true
        cell.lastEditedLabel.adjustsFontSizeToFitWidth = true
        cell.contentView.layer.cornerRadius = 20
        cell.contentView.layer.masksToBounds = true
        cell.progressView.transform = CGAffineTransform(scaleX: 1, y: 8)
        cell.progressView.setProgress(progress[indexPath.row], animated: true)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10.0
    }
}
