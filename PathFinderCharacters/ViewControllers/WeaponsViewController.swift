//
//  WeaponsViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 14.01.2023.
//

import UIKit

class WeaponsViewController: UITableViewController {

    private var weapons = Weapon.getWeapons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewWeapon))
        tableView.separatorStyle = .none
        tableView.register(WeaponCell.self, forCellReuseIdentifier: WeaponCell.weaponReuseId)
//        tableView.rowHeight = UITableView.automaticDimension
//        tableView.estimatedRowHeight = 600
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Constants.weaponsTitleHeadears[section]

    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        var content = header.defaultContentConfiguration()
        content.text = Constants.weaponsTitleHeadears[section]
        content.textProperties.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 22) ?? UIFont.systemFont(ofSize: 20)
        content.textProperties.color = UIColor.black
        header.contentConfiguration = content
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return weapons.filter{$0.special == false}.count
        case 1:
            return weapons.filter{$0.special == true}.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WeaponCell.weaponReuseId, for: indexPath) as! WeaponCell
        switch indexPath.section {
        case 0:
            let simpleWeapons = weapons.filter{$0.special == false}
            let cellWeapon = simpleWeapons[indexPath.row]
            cell.weaponCellSet(with: cellWeapon)
        case 1:
            let specialWeapons = weapons.filter{$0.special == true}
            let cellWeapon = specialWeapons[indexPath.row]
            cell.weaponCellSet(with: cellWeapon)
        default:
            break
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
