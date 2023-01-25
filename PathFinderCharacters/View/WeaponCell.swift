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
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    //MARK: - Image layer
    
    let weaponImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
//    MARK: - Top layer
    
    let topLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupFirstLayer()
        setupWeaponImageView()
        setupTopViewLayer()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupFirstLayer() {
        contentView.addSubview(firstLayerView)
        firstLayerView.fillSuperview(padding: Constants.cardInsets)
        firstLayerView.layer.cornerRadius = 10
        firstLayerView.clipsToBounds = true
        firstLayerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setupWeaponImageView() {
        firstLayerView.addSubview(weaponImageView)
        weaponImageView.topAnchor.constraint(equalTo: firstLayerView.topAnchor).isActive = true
        weaponImageView.leadingAnchor.constraint(equalTo: firstLayerView.leadingAnchor).isActive = true
        weaponImageView.heightAnchor.constraint(equalTo: firstLayerView.heightAnchor).isActive = true
        weaponImageView.widthAnchor.constraint(equalTo: firstLayerView.widthAnchor, multiplier: 1 / 4).isActive = true
    }
    
    func setupTopViewLayer() {
        firstLayerView.addSubview(topLayerView)
        topLayerView.topAnchor.constraint(equalTo: firstLayerView.topAnchor).isActive = true
        topLayerView.leadingAnchor.constraint(equalTo: weaponImageView.trailingAnchor).isActive = true
        topLayerView.trailingAnchor.constraint(equalTo: firstLayerView.trailingAnchor).isActive = true
        topLayerView.heightAnchor.constraint(equalTo: firstLayerView.heightAnchor, multiplier: 1 / 4).isActive = true
        
    }
    
}
