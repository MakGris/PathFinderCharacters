//
//  WeaponsViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 14.01.2023.
//

import UIKit

class WeaponsViewController: UITableViewController {
let titleHeaders = ["Простое оружие", "Особое оружие"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(WeaponCell.self, forCellReuseIdentifier: WeaponCell.reuseId)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleHeaders[section]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WeaponCell.reuseId, for: indexPath) as! WeaponCell
        return cell
    }

    

}
