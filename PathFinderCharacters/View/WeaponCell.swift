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
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - Image layer
    
    let weaponImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    //    MARK: - Text layer
    
    let textLayerView: UITextView = {
        let textView = UITextView()
        textView.textColor = .black
        textView.font = .systemFont(ofSize: 10)
        textView.text = "Тест Тест Тест Тест"
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    //    MARK: - Top layer
    
    let topLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameViewTextLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "Одноручный меч + 1fdfsdfsdfsdfsdfsdfsdfsdf"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    let distanceHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let distanceView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //    MARK: - Bottom layer
    
    let bottomLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let priceView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let gripView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let typeView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let damageView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let criticalDamageView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //    MARK: - Bottom Header layer
    
    let bottomHeaderLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let priceHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let gripHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let typeHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let damageHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let criticalDamageHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupFirstLayerView()
        setupWeaponImageView()
        setupTopLayerView()
        setupBottomLayerView()
        setupBottomHeaderlayerView()
        setupTextViewLayer()
        
    }
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupFirstLayerView() {
        contentView.addSubview(firstLayerView)
        firstLayerView.fillSuperview(padding: Constants.cardInsets)
        firstLayerView.layer.cornerRadius = 10
        firstLayerView.clipsToBounds = true
        firstLayerView.heightAnchor.constraint(equalToConstant: 140).isActive = true
    }
    
    func setupWeaponImageView() {
        firstLayerView.addSubview(weaponImageView)
        weaponImageView.topAnchor.constraint(equalTo: firstLayerView.topAnchor).isActive = true
        weaponImageView.leadingAnchor.constraint(equalTo: firstLayerView.leadingAnchor).isActive = true
        weaponImageView.heightAnchor.constraint(equalTo: firstLayerView.heightAnchor).isActive = true
        weaponImageView.widthAnchor.constraint(equalTo: firstLayerView.widthAnchor, multiplier: 1 / 4).isActive = true
    }
    
    func setupTopLayerView() {
        firstLayerView.addSubview(topLayerView)
        topLayerView.addSubview(nameView)
        nameView.addSubview(nameViewTextLabel)
        topLayerView.addSubview(distanceHeaderView)
        topLayerView.addSubview(distanceView)
        
        topLayerView.topAnchor.constraint(equalTo: firstLayerView.topAnchor).isActive = true
        topLayerView.leadingAnchor.constraint(equalTo: weaponImageView.trailingAnchor).isActive = true
        topLayerView.trailingAnchor.constraint(equalTo: firstLayerView.trailingAnchor).isActive = true
        topLayerView.heightAnchor.constraint(equalTo: firstLayerView.heightAnchor, multiplier: 1 / 3).isActive = true
        
        nameView.topAnchor.constraint(equalTo: topLayerView.topAnchor).isActive = true
        nameView.leadingAnchor.constraint(equalTo: topLayerView.leadingAnchor).isActive = true
        nameView.heightAnchor.constraint(equalTo: topLayerView.heightAnchor).isActive = true
        nameView.widthAnchor.constraint(equalTo: topLayerView.widthAnchor, multiplier: 5 / 7).isActive = true
        
        nameViewTextLabel.leadingAnchor.constraint(equalTo: nameView.leadingAnchor).isActive = true
        nameViewTextLabel.trailingAnchor.constraint(equalTo: nameView.trailingAnchor).isActive = true
        nameViewTextLabel.centerXAnchor.constraint(equalTo: nameView.centerXAnchor).isActive = true
        nameViewTextLabel.centerYAnchor.constraint(equalTo: nameView.centerYAnchor).isActive = true
        
        distanceHeaderView.topAnchor.constraint(equalTo: topLayerView.topAnchor).isActive = true
        distanceHeaderView.heightAnchor.constraint(equalTo: topLayerView.heightAnchor, multiplier: 1 / 2).isActive = true
        distanceHeaderView.leadingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 1).isActive = true
        distanceHeaderView.trailingAnchor.constraint(equalTo: topLayerView.trailingAnchor).isActive = true
        
        distanceView.topAnchor.constraint(equalTo: distanceHeaderView.bottomAnchor).isActive = true
        distanceView.leadingAnchor.constraint(equalTo: distanceHeaderView.leadingAnchor).isActive = true
        distanceView.trailingAnchor.constraint(equalTo: distanceHeaderView.trailingAnchor).isActive = true
        distanceView.heightAnchor.constraint(equalTo: distanceHeaderView.heightAnchor).isActive = true
    }
    
    func setupBottomLayerView() {
        firstLayerView.addSubview(bottomLayerView)
        bottomLayerView.addSubview(priceView)
        bottomLayerView.addSubview(gripView)
        bottomLayerView.addSubview(typeView)
        bottomLayerView.addSubview(damageView)
        bottomLayerView.addSubview(criticalDamageView)
        
        bottomLayerView.leadingAnchor.constraint(equalTo: weaponImageView.trailingAnchor).isActive = true
        bottomLayerView.trailingAnchor.constraint(equalTo: firstLayerView.trailingAnchor).isActive = true
        bottomLayerView.bottomAnchor.constraint(equalTo: firstLayerView.bottomAnchor).isActive = true
        bottomLayerView.heightAnchor.constraint(equalTo: firstLayerView.heightAnchor, multiplier: 1 / 4).isActive = true
        
        priceView.leadingAnchor.constraint(equalTo: bottomLayerView.leadingAnchor).isActive = true
        priceView.topAnchor.constraint(equalTo: bottomLayerView.topAnchor).isActive = true
        priceView.bottomAnchor.constraint(equalTo: bottomLayerView.bottomAnchor).isActive = true
        priceView.widthAnchor.constraint(equalTo: bottomLayerView.widthAnchor, multiplier: 1 / 7).isActive = true
        
        gripView.leadingAnchor.constraint(equalTo: priceView.trailingAnchor, constant: 1).isActive = true
        gripView.topAnchor.constraint(equalTo: bottomLayerView.topAnchor).isActive = true
        gripView.bottomAnchor.constraint(equalTo: bottomLayerView.bottomAnchor).isActive = true
        gripView.widthAnchor.constraint(equalTo: bottomLayerView.widthAnchor, multiplier: 1 / 7).isActive = true
        
        typeView.leadingAnchor.constraint(equalTo: gripView.trailingAnchor, constant: 1).isActive = true
        typeView.topAnchor.constraint(equalTo: bottomLayerView.topAnchor).isActive = true
        typeView.bottomAnchor.constraint(equalTo: bottomLayerView.bottomAnchor).isActive = true
        typeView.widthAnchor.constraint(equalTo: bottomLayerView.widthAnchor, multiplier: 2 / 7).isActive = true
        
        damageView.leadingAnchor.constraint(equalTo: typeView.trailingAnchor, constant: 1).isActive = true
        damageView.topAnchor.constraint(equalTo: bottomLayerView.topAnchor).isActive = true
        damageView.bottomAnchor.constraint(equalTo: bottomLayerView.bottomAnchor).isActive = true
        damageView.widthAnchor.constraint(equalTo: bottomLayerView.widthAnchor, multiplier: 1 / 7).isActive = true
        
        criticalDamageView.leadingAnchor.constraint(equalTo: damageView.trailingAnchor, constant: 1).isActive = true
        criticalDamageView.topAnchor.constraint(equalTo: bottomLayerView.topAnchor).isActive = true
        criticalDamageView.bottomAnchor.constraint(equalTo: bottomLayerView.bottomAnchor).isActive = true
        criticalDamageView.widthAnchor.constraint(equalTo: bottomLayerView.widthAnchor, multiplier: 2 / 7).isActive = true
        
    }
    
    func setupBottomHeaderlayerView() {
        firstLayerView.addSubview(bottomHeaderLayerView)
        bottomHeaderLayerView.addSubview(priceHeaderView)
        bottomHeaderLayerView.addSubview(gripHeaderView)
        bottomHeaderLayerView.addSubview(typeHeaderView)
        bottomHeaderLayerView.addSubview(damageHeaderView)
        bottomHeaderLayerView.addSubview(criticalDamageHeaderView)
        
        bottomHeaderLayerView.leadingAnchor.constraint(equalTo: bottomLayerView.leadingAnchor).isActive = true
        bottomHeaderLayerView.trailingAnchor.constraint(equalTo: bottomLayerView.trailingAnchor).isActive = true
        bottomHeaderLayerView.bottomAnchor.constraint(equalTo: bottomLayerView.topAnchor).isActive = true
        bottomHeaderLayerView.heightAnchor.constraint(equalTo: bottomLayerView.heightAnchor, multiplier: 2 / 4).isActive = true
        
        priceHeaderView.leadingAnchor.constraint(equalTo: priceView.leadingAnchor).isActive = true
        priceHeaderView.topAnchor.constraint(equalTo: bottomHeaderLayerView.topAnchor).isActive = true
        priceHeaderView.bottomAnchor.constraint(equalTo: bottomHeaderLayerView.bottomAnchor).isActive = true
        priceHeaderView.widthAnchor.constraint(equalTo: bottomHeaderLayerView.widthAnchor, multiplier: 1 / 7).isActive = true
        
        gripHeaderView.leadingAnchor.constraint(equalTo: priceHeaderView.trailingAnchor, constant: 1).isActive = true
        gripHeaderView.topAnchor.constraint(equalTo: bottomHeaderLayerView.topAnchor).isActive = true
        gripHeaderView.bottomAnchor.constraint(equalTo: bottomHeaderLayerView.bottomAnchor).isActive = true
        gripHeaderView.widthAnchor.constraint(equalTo: bottomHeaderLayerView.widthAnchor, multiplier: 1 / 7).isActive = true
        
        typeHeaderView.leadingAnchor.constraint(equalTo: gripHeaderView.trailingAnchor, constant: 1).isActive = true
        typeHeaderView.topAnchor.constraint(equalTo: bottomHeaderLayerView.topAnchor).isActive = true
        typeHeaderView.bottomAnchor.constraint(equalTo: bottomHeaderLayerView.bottomAnchor).isActive = true
        typeHeaderView.widthAnchor.constraint(equalTo: bottomHeaderLayerView.widthAnchor, multiplier: 2 / 7).isActive = true
        
        damageHeaderView.leadingAnchor.constraint(equalTo: typeHeaderView.trailingAnchor, constant: 1).isActive = true
        damageHeaderView.topAnchor.constraint(equalTo: bottomHeaderLayerView.topAnchor).isActive = true
        damageHeaderView.bottomAnchor.constraint(equalTo: bottomHeaderLayerView.bottomAnchor).isActive = true
        damageHeaderView.widthAnchor.constraint(equalTo: bottomHeaderLayerView.widthAnchor, multiplier: 1 / 7).isActive = true
        
        criticalDamageHeaderView.leadingAnchor.constraint(equalTo: damageHeaderView.trailingAnchor, constant: 1).isActive = true
        criticalDamageHeaderView.topAnchor.constraint(equalTo: bottomHeaderLayerView.topAnchor).isActive = true
        criticalDamageHeaderView.bottomAnchor.constraint(equalTo: bottomHeaderLayerView.bottomAnchor).isActive = true
        criticalDamageHeaderView.widthAnchor.constraint(equalTo: bottomHeaderLayerView.widthAnchor, multiplier: 2 / 7).isActive = true
    }
    
    func setupTextViewLayer() {
        firstLayerView.addSubview(textLayerView)
        
        textLayerView.leadingAnchor.constraint(equalTo: weaponImageView.trailingAnchor).isActive = true
        textLayerView.trailingAnchor.constraint(equalTo: firstLayerView.trailingAnchor).isActive = true
        textLayerView.topAnchor.constraint(equalTo: topLayerView.bottomAnchor).isActive = true
        textLayerView.bottomAnchor.constraint(equalTo: bottomHeaderLayerView.topAnchor).isActive = true
//        textLayerView.heightAnchor.constraint(equalTo: bottomLayerView.heightAnchor, multiplier: 2 / 4).isActive = true
        
    }
}
