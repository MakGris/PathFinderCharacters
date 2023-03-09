//
//  ArmorCell.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 26.02.2023.
//

import UIKit

class ArmorCell: UITableViewCell {
    
    static let armorReuseId = "armorCell"
    
    //MARK: - First layer
    let firstLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - Image layer
    
    let armorImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    //MARK: - Top layer
    
    let topLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let priceViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let typeView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let typeViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let shieldImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "shieldLabel")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let shieldViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //    MARK: - Text layer
    
    let textLayerViewLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupFirstLayer()
        setupWeaponImageView()
        setupTopLayerView()
        setupTextViewLayer()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func armorCellSet(with armor: Armor) {
        textLayerViewLabel.text = armor.description
        nameViewTextLabel.text = armor.name
        priceViewTextLabel.text = armor.price
        typeViewTextLabel.text = armor.category
        shieldViewTextLabel.text = armor.modificator
//        Заглушка
        armorImageView.image = UIImage(named: "sword")
    }
    
    func setupFirstLayer() {
        contentView.addSubview(firstLayerView)
        firstLayerView.fillSuperview(padding: Constants.cardInsets)
        firstLayerView.layer.cornerRadius = 10
        firstLayerView.clipsToBounds = true
    }
    
    func setupWeaponImageView() {
        firstLayerView.addSubview(armorImageView)
        armorImageView.topAnchor.constraint(
            equalTo: firstLayerView.topAnchor
        ).isActive = true
        armorImageView.leadingAnchor.constraint(
            equalTo: firstLayerView.leadingAnchor)
        .isActive = true
        armorImageView.heightAnchor.constraint(
            equalTo: firstLayerView.heightAnchor
        ).isActive = true
        armorImageView.widthAnchor.constraint(
            equalTo: firstLayerView.widthAnchor,
            multiplier: 1 / 4
        ).isActive = true
    }
    
    func setupTopLayerView() {
        firstLayerView.addSubview(topLayerView)
        topLayerView.topAnchor.constraint(
            equalTo: firstLayerView.topAnchor
        ).isActive = true
        topLayerView.leadingAnchor.constraint(
            equalTo: armorImageView.trailingAnchor
        ).isActive = true
        topLayerView.trailingAnchor.constraint(
            equalTo: firstLayerView.trailingAnchor
        ).isActive = true
        topLayerView.heightAnchor.constraint(
            equalTo: firstLayerView.heightAnchor,
            multiplier: 1 / 3
        ).isActive = true
        
        topLayerView.addSubview(nameView)
        nameView.addSubview(nameViewTextLabel)
        nameView.topAnchor.constraint(
            equalTo: topLayerView.topAnchor
        ).isActive = true
        nameView.leadingAnchor.constraint(
            equalTo: topLayerView.leadingAnchor
        ).isActive = true
        nameView.heightAnchor.constraint(
            equalTo: topLayerView.heightAnchor
        ).isActive = true
        nameView.widthAnchor.constraint(
            equalTo: topLayerView.widthAnchor,
            multiplier: 4 / 6
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: nameViewTextLabel,
            anchorView: nameView
        )
        
        topLayerView.addSubview(priceView)
        priceView.addSubview(priceViewTextLabel)
        priceView.topAnchor.constraint(
            equalTo: topLayerView.topAnchor
        ).isActive = true
        priceView.heightAnchor.constraint(
            equalTo: topLayerView.heightAnchor,
            multiplier: 1 / 2
        ).isActive = true
        priceView.leadingAnchor.constraint(
            equalTo: nameView.trailingAnchor,
            constant: 1
        ).isActive = true
        priceView.widthAnchor.constraint(
            equalTo: topLayerView.widthAnchor,
            multiplier: 1/6
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: priceViewTextLabel,
            anchorView: priceView
        )
        
        topLayerView.addSubview(typeView)
        typeView.addSubview(typeViewTextLabel)
        typeView.topAnchor.constraint(
            equalTo: priceView.bottomAnchor
        ).isActive = true
        typeView.heightAnchor.constraint(
            equalTo: topLayerView.heightAnchor,
            multiplier: 1 / 2
        ).isActive = true
        typeView.leadingAnchor.constraint(
            equalTo: priceView.leadingAnchor
        ).isActive = true
        typeView.widthAnchor.constraint(
            equalTo: priceView.widthAnchor
        ).isActive = true
        setupTextLabelsConstraints(
            TextLabel: typeViewTextLabel,
            anchorView: typeView
        )
        
        
        topLayerView.addSubview(shieldImageView)
        shieldImageView.addSubview(shieldViewTextLabel)
        shieldImageView.leadingAnchor.constraint(
            equalTo: priceView.trailingAnchor
        ).isActive = true
        shieldImageView.trailingAnchor.constraint(
            equalTo: topLayerView.trailingAnchor
        ).isActive = true
        shieldImageView.heightAnchor.constraint(
            equalTo: topLayerView.heightAnchor
        ).isActive = true
        setupTextLabelsConstraints(
            TextLabel: shieldViewTextLabel,
            anchorView: shieldImageView
        )
        
        
    }
    
    func setupTextViewLayer() {
        firstLayerView.addSubview(textLayerViewLabel)
        textLayerViewLabel.leadingAnchor.constraint(
            equalTo: armorImageView.trailingAnchor,
            constant: 5
        ).isActive = true
        textLayerViewLabel.trailingAnchor.constraint(
            equalTo: firstLayerView.trailingAnchor,
            constant: -5
        ).isActive = true
        textLayerViewLabel.topAnchor.constraint(
            equalTo: topLayerView.bottomAnchor
        ).isActive = true
        textLayerViewLabel.bottomAnchor.constraint(
            equalTo: firstLayerView.bottomAnchor
        ).isActive = true
    }
}

