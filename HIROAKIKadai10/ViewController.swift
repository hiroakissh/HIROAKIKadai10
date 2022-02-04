//
//  ViewController.swift
//  HIROAKIKadai10
//
//  Created by HiroakiSaito on 2022/01/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak private var japanAreaCellLabel1: UILabel!
    @IBOutlet weak private var japanAreaCellLabel2: UILabel!
    @IBOutlet weak private var japanAreaCellLabel3: UILabel!
    @IBOutlet weak private var cellNumberLabel1: UILabel!
    @IBOutlet weak private var cellNumberLabel2: UILabel!
    @IBOutlet weak private var cellNumberLabel3: UILabel!

    let japanArea: [String] = [
        "北海道", "青森県", "3" ,"1" ,"2" ,"3", "3" ,"1" ,"2" ,"3", "3" ,"1" ,"2" ,"3", "3" ,"1" ,"2" ,"3", "3" ,"1" ,"2"
        ,"3", "3" ,"1" ,"2" ,"3", "3" ,"1" ,"2" ,"3", "3" ,"1" ,"2" ,"3" ,"1" ,"2" ,"3" ,"1" ,"2" ,"3" ,"1" ,"2" ,"3" ,"1" ,"2" ,"3", "1"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
print(japanArea.count)
        return japanArea.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var identifier = ""

        if indexPath.row % 3 == 0 {
            identifier = "Cell1"
        } else if indexPath.row % 3 == 1 {
            identifier = "Cell2"
        } else if indexPath.row % 3 == 2 {
            identifier = "Cell3"
        }

        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        return cell
    }
}
