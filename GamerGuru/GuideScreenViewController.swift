//
//  TestViewController.swift
//  GamerGuru
//
//  Created by Chia Pingky on 03/05/19.
//  Copyright © 2019 Ananda Kevin Refaldo Sariputra. All rights reserved.
//

import UIKit

class GuideScreenViewController: UIViewController {

    @IBOutlet weak var searchContent: UISearchBar!
    @IBOutlet weak var contentTable: UITableView!
    var topicTitle:[String] = ["Map", "Creep and Jungle", "Heroes", "Items", "Item Build"]
    var topicBackgroundImage:[String] = ["1", "2", "3", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "dota 2 bg"), for: .top, barMetrics: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        searchContent.setBackgroundImage(UIImage(), for: .top, barMetrics: .default)
        searchContent.backgroundColor = #colorLiteral(red: 0.9763886333, green: 0.9765250087, blue: 0.9763454795, alpha: 1)

//        self.navigationItem.titleView = UIImageView(image: )
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

extension GuideScreenViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topicTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (contentTable.dequeueReusableCell(withIdentifier: "guideTableItem", for: indexPath) as? GuideContentTableViewCell)!
        cell.cellBackground.image = UIImage(named: topicBackgroundImage[indexPath.row])
        cell.guideTopic.text = topicTitle[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
