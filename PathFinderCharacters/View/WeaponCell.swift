//
//  WeaponCell.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 25.01.2023.
//

import UIKit

class WeaponCell: UITableViewCell {

     static let reuseId = "weaponCell"
    
    //MARK: - First layer
    
    let firstLayerView: UIView = {
        let view = UIView()
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
