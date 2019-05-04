//
//  SecondViewController.swift
//  GamerGuru
//
//  Created by Ananda Kevin Refaldo Sariputra on 29/04/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController {

    @IBOutlet weak var searchGuide: UISearchBar!
    @IBOutlet weak var collectionGame: UICollectionView!
    var gameName:[String] = ["Dota 2", "CS-GO", "PUBG", "Fortnite", "APEX", "Crossfire"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage()
        searchGuide.setBackgroundImage(UIImage(), for: .top, barMetrics: .default)
        searchGuide.backgroundColor = #colorLiteral(red: 0.9763886333, green: 0.9765250087, blue: 0.9763454795, alpha: 1)
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
