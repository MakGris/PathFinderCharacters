//
//  ArmorsViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 07.03.2023.
//

import UIKit

class ArmorsViewController: UITableViewController {
    private var armor = Armor.getArmors()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none
        tableView.register(ArmorCell.self, forCellReuseIdentifier: ArmorCell.armorReuseId)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Constants.armorTitleHeaders[section]

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return armor.filter{$0.category == "Лёгкий"}.count
        case 1:
            return armor.filter{$0.category == "Средний"}.count
        case 2:
            return armor.filter{$0.category == "Тяжёлый"}.count
        case 3:
            return armor.filter{$0.category == "Щит"}.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ArmorCell.armorReuseId, for: indexPath) as! ArmorCell
        switch indexPath.section {
        case 0:
            let lightArmor = armor.filter{$0.category == "Лёгкий" }
            let cellLightArmor = lightArmor[indexPath.row]
            cell.armorCellSet(with: cellLightArmor)
        case 1:
            let mediumArmor = armor.filter{$0.category == "Средний"}
            let cellMediumArmor = mediumArmor[indexPath.row]
            cell.armorCellSet(with: cellMediumArmor)
        case 2:
            let heavyArmor = armor.filter{$0.category == "Тяжёлый"}
            let cellHeavyArmor = heavyArmor[indexPath.row]
            cell.armorCellSet(with: cellHeavyArmor)
        case 3:
            let shields = armor.filter{$0.category == "Щит"}
            let cellShield = shields[indexPath.row]
            cell.armorCellSet(with: cellShield)
        default:
            break
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }

}
