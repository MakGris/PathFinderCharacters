//
//  AddEquipmentViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 26.03.2023.
//

import UIKit

class AddEquipmentViewController: UIViewController {

    var square: UIView!
    var equipment: EquipmentCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        equipment = EquipmentCell()
//        square = UIView(frame: CGRect(x: 100.0, y: 100.0, width: 100, height: 100))
//        square.backgroundColor = .blue
        view.addSubview(equipment)
        equipment.center = view.center
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
