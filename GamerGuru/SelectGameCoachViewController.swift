//
//  SelectGameCoachViewController.swift
//  GamerGuru
//
//  Created by Fabian Vieri Pasulle on 08/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class SelectGameCoachViewController: UIViewController {
    let gameLogo:[String] = ["Dota 2", "CS-GO", "PUBG", "Fortnite", "APEX", "Crossfire"]
    @IBOutlet weak var searchBarC: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarC.setBackgroundImage(UIImage(), for: .top, barMetrics: .default)
        searchBarC.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
}

extension SelectGameCoachViewController:UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gameLogo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "logoGameCoach", for: indexPath) as! ImageCollectionViewCell
        cell.gameImageCoach.image = UIImage(named: gameLogo[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row != 3 {
            let alert = UIAlertController(title: "Content Coming Soon", message: "Content not available yet, but will be available soon.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: "gameSelectedCoach", sender: self)
        }
    }
    
    
}
