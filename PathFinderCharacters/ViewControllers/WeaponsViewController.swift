//
//  WeaponsViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 14.01.2023.
//

import UIKit

class WeaponsViewController: UITableViewController {
    
private let titleHeaders = ["Простое оружие", "Особое оружие"]
    private var weapons = Weapon.getWeapons()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewWeapon))
        tableView.separatorStyle = .none
        tableView.register(WeaponCell.self, forCellReuseIdentifier: WeaponCell.reuseId)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleHeaders[section]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return weapons.filter{$0.special == false}.count
        
        default:
            return weapons.filter{$0.special == true}.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WeaponCell.reuseId, for: indexPath) as! WeaponCell
        switch indexPath.section {
        case 0:
            let simpleWeapons = weapons.filter{$0.special == false}
            let cellWeapon = simpleWeapons[indexPath.row]
            cell.cellSet(with: cellWeapon)
        default:
            let specialWeapons = weapons.filter{$0.special == true}
            let cellWeapon = specialWeapons[indexPath.row]
            cell.cellSet(with: cellWeapon)
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }

}
extension WeaponsViewController {
    @objc func addNewWeapon() {
        
    }
}
