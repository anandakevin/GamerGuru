//
//  GuideContentViewController.swift
//  GamerGuru
//
//  Created by Chia Pingky on 05/05/19.
//  Copyright © 2019 Chia Pingky. All rights reserved.
//

import UIKit

class GuideContentViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var contentTable: UITableView!
    let topicTitle:[String] = ["Map", "Creep and Jungle", "Heroes", "Items", "Item Build for Heroes"]
    let topicImage:[String] = ["maps", "crep", "spec", "item", "build"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage()
        searchBar.backgroundImage = UIImage()
        searchBar.backgroundColor = #colorLiteral(red: 0.9763886333, green: 0.9765250087, blue: 0.9763454795, alpha: 1)
    }
}

extension GuideContentViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topicTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (contentTable.dequeueReusableCell(withIdentifier: "contentCell", for: indexPath) as? GuideTopicTableViewCell)!
        cell.cellTitle.text = topicTitle[indexPath.row]
        cell.cellBackground.image = UIImage(named: topicImage[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0 {
            let alert = UIAlertController(title: "Content In Progress", message: "We are still working on this topic, but it will be available soon", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            performSegue(withIdentifier: "topicSelected", sender: self)
        }
        contentTable.deselectRow(at: indexPath, animated: true)
    }
}
