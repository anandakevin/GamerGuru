//
//  LoginViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 02/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var passIcon: UIImageView!
    @IBOutlet weak var testImage: UIImageView!
    @IBOutlet weak var loginPage: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var segmentLogin: UISegmentedControl!
    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var registerPage: UIView!
    @IBAction func changeSection(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            login()
        } else {
            register()
        }
    }
    
    @IBAction func agreementChanger(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
    @IBAction func rememberMeChanger(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
    
    func login() {
        loginPage.alpha = 1
        registerPage.alpha = 0
        
    }
    
    func register() {
        loginPage.alpha = 0
        registerPage.alpha = 1
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userImage = UIImage(named: "avatar"), let passImage = UIImage(named: "password") else {
            return
        }
        userIcon?.image = userImage
        passIcon?.image = passImage
        passIcon?.contentMode = .scaleAspectFit
        loginButton?.layer.cornerRadius = 5
        loginButton?.layer.masksToBounds = true
        joinButton?.layer.cornerRadius = 5
        joinButton?.layer.masksToBounds = true

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    @IBOutlet weak var line1: UIImageView!
    @IBOutlet weak var line2: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
