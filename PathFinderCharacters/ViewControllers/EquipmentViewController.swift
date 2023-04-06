//
//  EquipmentViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 18.03.2023.
//

import UIKit

class EquipmentViewController: UITableViewController {
    
    private var equipment = Equipment.getEquipment()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        tableView.register(
            EquipmentCell.self,
            forCellReuseIdentifier: EquipmentCell.equipmentReuseId
        )
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewEquipment))
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        equipment.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EquipmentCell.equipmentReuseId, for: indexPath) as! EquipmentCell
        let equipmentItem = equipment[indexPath.row]
        cell.equipmentCellSet(with: equipmentItem)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    
}

extension EquipmentViewController {
    @objc func addNewEquipment() {
        let vc = AddEquipmentViewController()
        present(vc, animated: true)
    }
}
