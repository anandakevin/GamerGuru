//
//  SecondViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 29/04/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController {

    @IBOutlet weak var collectionGame: UICollectionView!
    var gameName:[String] = ["Dota 2", "CS-GO", "PUBG", "Fortnite", "APEX", "Crossfire"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension GuideViewController : UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gameName.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let itemCell = (collectionGame.dequeueReusableCell(withReuseIdentifier: "gameLogo", for: indexPath) as? CollectionViewCell)!
        itemCell.logoImage.image = UIImage(named: gameName[indexPath.row])
        return itemCell
    }
    
    
}
