//
//  GuideViewController.swift
//  GamerGuru
//
//  Created by Chia Pingky on 05/05/19.
//  Copyright © 2019 Chia Pingky. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var gameList: UICollectionView!
    let gameLogo:[String] = ["Dota 2", "CS-GO", "PUBG", "Fortnite", "APEX", "Crossfire"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.setBackgroundImage(UIImage(), for: .top, barMetrics: .default)
        searchBar.backgroundColor = #colorLiteral(red: 0.9763886333, green: 0.9765250087, blue: 0.9763454795, alpha: 1)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
}

extension GuideViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gameLogo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (gameList.dequeueReusableCell(withReuseIdentifier: "logoCell", for: indexPath) as? GameCollectionViewCell)!
        cell.gameLogo.image = UIImage(named: gameLogo[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row != 0 {
            let alert = UIAlertController(title: "Content Coming Soon", message: "Content not available yet, but will be available soon.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else {
            performSegue(withIdentifier: "gameSelected", sender: self)
            
        }
    }
}
