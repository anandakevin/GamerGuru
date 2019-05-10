//
//  FirstViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 29/04/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var gameImage = ["game1","game2","game3","game4","game5","game6","game7"]
    var coachImageArr = ["coach","coach3","coach2","coach3","coach4","coach2","coach","coach4"]
    var coachName = ["Fabian Vieri", "Hedianto", "Victor Wijaya", "Farico Novenio", "Chia Pingky", "Ananda Kevin", "Heinrich Reagan"]
    var coachGame = ["Fortnite", "PUBG", "CS:GO", "DOTA 2", "APEX", "CROSSFIRE", "OVERWATCH"]
    var coachRating: [Double] = [4.0,5.0,3.0,4.0,3.0,3.0,4.0]

    @IBOutlet weak var gameColView: UICollectionView!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
//        tabBarController?.delegate = self
    }
    
    func configView() {
        
        // profile picture
        profilePicture.image = UIImage(named: "default_icon")
        profilePicture.layer.cornerRadius = profilePicture.frame.size.width / 2
        profilePicture.layer.borderWidth = 0
        //profilePic/Users/chiapingky/Documents/GamerGuru/GamerGuru.xcodeprojture.layer.backgroundColor = UIColor.lightGray.cgColor
        profilePicture.clipsToBounds = true
        username.text = "User"
        
        // profile button
        profileButton.layer.cornerRadius = 5
        profileButton.layer.masksToBounds = true
        
        // logout button
        logoutButton.layer.cornerRadius = 5
        logoutButton.layer.masksToBounds = true
        
        // login button
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
        loginButton.isHidden = true
        
        // register button
        registerButton.layer.cornerRadius = 5
        registerButton.layer.masksToBounds = true
        registerButton.isHidden = true
        
        // line break 1
//        let border = CALayer()
//        border.frame = CGRect(x: 20, y: borderView.frame.size.height + 39, width: borderView.frame.size.width - 40, height: 1)
//        border.backgroundColor = UIColor.black.cgColor
        //borderView.layer.addSublayer(border)
        
        // line break 2
        let anotherBorder = CALayer()
        anotherBorder.frame = CGRect(x: 0, y: profileView.frame.size.height + 30, width: profileView.frame.width, height: 1)
        anotherBorder.backgroundColor = UIColor.lightGray.cgColor
        profileView.layer.addSublayer(anotherBorder)
    }
    @IBOutlet weak var username: UILabel!
    
    @IBAction func logout(_ sender: UIButton) {
        profileButton.isHidden = true
        logoutButton.isHidden = true
        registerButton.isHidden = false
        loginButton.isHidden = false
        username.text = "Guest"
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gameImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == gameColView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GameCell", for: indexPath) as! ImageCollectionViewCell
            cell.gameImage.image=UIImage(named: gameImage[indexPath.row])
            cell.gameImage.layer.cornerRadius = 10.0
            cell.gameImage.layer.masksToBounds = true
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOffset = CGSize(width:0,height: 1.0)
            cell.layer.shadowRadius = 4.0
            cell.layer.shadowOpacity = 10.0
            cell.layer.masksToBounds = false
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoachCell", for: indexPath) as! ImageCollectionViewCell
            cell.coachImage.image = UIImage(named: coachImageArr[indexPath.row])
            cell.coachLabelName.text = coachName[indexPath.row]
            cell.coachLabelGame.text = coachGame[indexPath.row]
            cell.coachRating.rating = coachRating[indexPath.row]
            cell.coachImage.layer.cornerRadius = cell.coachImage.frame.size.width / 2
            cell.coachImage.clipsToBounds = true
            cell.coachLabelGame.adjustsFontSizeToFitWidth = true
            
            cell.mainView.layer.cornerRadius = 10.0
            cell.mainView.layer.masksToBounds = true
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOffset = CGSize(width:0,height: 1.0)
            cell.layer.shadowRadius = 4.0
            cell.layer.shadowOpacity = 10.0
            cell.layer.masksToBounds = false
            
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 && collectionView == gameColView{
            performSegue(withIdentifier: "selectGame", sender: self)
        }
        else if collectionView == gameColView{
            let alert = UIAlertController(title: "Content Coming Soon", message: "Content not available yet, but will be available soon.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}

//extension HomeViewController:UITabBarControllerDelegate {
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//
//        print(viewController)
//        if let viewController = viewController as? UINavigationController {
//            if viewController.topViewController is CoachViewController {
//                //print("masuk")
//                let alert = UIAlertController(title: "Access Denied", message: "Login to use this feature", preferredStyle: .alert)
//                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//                self.present(alert, animated: true, completion: nil)
//                return false
//            }
//
//        }
//
////        if let viewController = viewController as? UINavigationController {
////            if viewController.topViewController is GuideViewController {
////                print("Guide")
////            }
////        }
////
////        if let viewController =  viewController as? HomeViewController {
////            print("home")
////        }
//        return true
//    }
//}
