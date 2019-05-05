//
//  FirstViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 29/04/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var imageArr = ["testImage","testImage","testImage","testImage","testImage","testImage","testImage"]
    var coachImageArr = ["coach","coach","coach","coach","coach","coach","coach","coach"]

    @IBOutlet weak var gameColView: UICollectionView!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var profileView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // profile picture
        profilePicture.image = UIImage(named: "default_icon")
        profilePicture.layer.cornerRadius = profilePicture.frame.size.width / 2
        profilePicture.layer.borderWidth = 1
        profilePicture.clipsToBounds = true
        
        // profile button
        profileButton.layer.cornerRadius = 5
        profileButton.layer.masksToBounds = true
        
        // line break 1
        let border = CALayer()
        border.frame = CGRect(x: 20, y: borderView.frame.size.height, width: borderView.frame.size.width - 40, height: 1)
        border.backgroundColor = UIColor.black.cgColor
        borderView.layer.addSublayer(border)
        
        // line break 2
        let anotherBorder = CALayer()
        anotherBorder.frame = CGRect(x: 20, y: profileView.frame.size.height - 1, width: profileView.frame.width - 40, height: 1)
        anotherBorder.backgroundColor = UIColor.black.cgColor
        profileView.layer.addSublayer(anotherBorder)
        
    }
    
}

extension UIView {
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == gameColView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GameCell", for: indexPath) as! ImageCollectionViewCell
            cell.gameImage.setImage(UIImage(named: imageArr[indexPath.row]), for: .normal)
            cell.gameImage.layer.cornerRadius = 10
            cell.gameImage.layer.masksToBounds = true
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoachCell", for: indexPath) as! ImageCollectionViewCell
            cell.coachImage.image = UIImage(named: coachImageArr[indexPath.row])
            cell.coachImage.layer.cornerRadius = cell.coachImage.frame.size.width / 2
            cell.coachImage.clipsToBounds = true
            cell.coachLabelGame.adjustsFontSizeToFitWidth = true
            
            cell.mainView.layer.cornerRadius = 10
            cell.mainView.layer.shadowColor = UIColor.lightGray.cgColor
            cell.mainView.layer.shadowOffset = CGSize(width:0,height: 1.0)
            cell.mainView.layer.shadowRadius = 1.0
            cell.mainView.layer.shadowOpacity = 0.5
            cell.mainView.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
            cell.mainView.layer.masksToBounds = false
            return cell
        }
        
    }
    
    func configCoachCell(_ cell:UICollectionViewCell) -> UICollectionViewCell {
        
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    
    
    
}

