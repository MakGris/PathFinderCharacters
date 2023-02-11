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
        view.backgroundColor = .white
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
    
    let textLayerViewLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
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
    
    let distanceHeaderViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "дистанция"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let distanceView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let distanceViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    let priceViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let gripView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let gripViewTextLabel: UILabel = {
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
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let typeViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let damageView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let damageViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let criticalDamageView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let criticalDamageViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    let priceHeaderViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "цена"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let gripHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let gripHeaderViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "хват"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let typeHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let typeHeaderViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "тип"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let damageHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let damageHeaderViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "урон"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let criticalDamageHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let criticalDamageHeaderViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "крит. удар"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    func cellSet(with weapon: Weapon) {
        textLayerViewLabel.text = weapon.description
        nameViewTextLabel.text = weapon.name
        distanceViewTextLabel.text = weapon.distance
        priceViewTextLabel.text = weapon.price
        gripViewTextLabel.text = weapon.grip
        typeViewTextLabel.text = weapon.type
        damageViewTextLabel.text = weapon.damage
        criticalDamageViewTextLabel.text = weapon.criticalDamage
        weaponImageView.image = UIImage(named: weapon.picture)
    }
    
    func setupFirstLayerView() {
        contentView.addSubview(firstLayerView)
        firstLayerView.fillSuperview(padding: Constants.cardInsets)
        firstLayerView.layer.cornerRadius = 10
        firstLayerView.clipsToBounds = true
    }
    
    func setupWeaponImageView() {
        firstLayerView.addSubview(weaponImageView)
        weaponImageView.topAnchor.constraint(
            equalTo: firstLayerView.topAnchor
        ).isActive = true
        weaponImageView.leadingAnchor.constraint(
            equalTo: firstLayerView.leadingAnchor)
        .isActive = true
        weaponImageView.heightAnchor.constraint(
            equalTo: firstLayerView.heightAnchor
        ).isActive = true
        weaponImageView.widthAnchor.constraint(
            equalTo: firstLayerView.widthAnchor,
            multiplier: 1 / 4
        ).isActive = true
    }
    
    func setupTopLayerView() {
        firstLayerView.addSubview(topLayerView)
        topLayerView.addSubview(nameView)
        nameView.addSubview(nameViewTextLabel)
        topLayerView.addSubview(distanceHeaderView)
        distanceHeaderView.addSubview(distanceHeaderViewTextLabel)
        topLayerView.addSubview(distanceView)
        distanceView.addSubview(distanceViewTextLabel)
        
        topLayerView.topAnchor.constraint(
            equalTo: firstLayerView.topAnchor
        ).isActive = true
        topLayerView.leadingAnchor.constraint(
            equalTo: weaponImageView.trailingAnchor
        ).isActive = true
        topLayerView.trailingAnchor.constraint(
            equalTo: firstLayerView.trailingAnchor
        ).isActive = true
        topLayerView.heightAnchor.constraint(
            equalTo: firstLayerView.heightAnchor,
            multiplier: 1 / 3
        ).isActive = true
        
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
            multiplier: 5 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: nameViewTextLabel,
            anchorView: nameView
        )
        
        distanceHeaderView.topAnchor.constraint(
            equalTo: topLayerView.topAnchor
        ).isActive = true
        distanceHeaderView.heightAnchor.constraint(
            equalTo: topLayerView.heightAnchor,
            multiplier: 1 / 2
        ).isActive = true
        distanceHeaderView.leadingAnchor.constraint(
            equalTo: nameView.trailingAnchor,
            constant: 1
        ).isActive = true
        distanceHeaderView.trailingAnchor.constraint(
            equalTo: topLayerView.trailingAnchor
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: distanceHeaderViewTextLabel,
            anchorView: distanceHeaderView
        )
        
        distanceView.topAnchor.constraint(
            equalTo: distanceHeaderView.bottomAnchor
        ).isActive = true
        distanceView.leadingAnchor.constraint(
            equalTo: distanceHeaderView.leadingAnchor
        ).isActive = true
        distanceView.trailingAnchor.constraint(
            equalTo: distanceHeaderView.trailingAnchor
        ).isActive = true
        distanceView.heightAnchor.constraint(
            equalTo: distanceHeaderView.heightAnchor
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: distanceViewTextLabel,
            anchorView: distanceView
        )
    }
    
    func setupBottomLayerView() {
        firstLayerView.addSubview(bottomLayerView)
        bottomLayerView.addSubview(priceView)
        priceView.addSubview(priceViewTextLabel)
        bottomLayerView.addSubview(gripView)
        gripView.addSubview(gripViewTextLabel)
        bottomLayerView.addSubview(typeView)
        typeView.addSubview(typeViewTextLabel)
        bottomLayerView.addSubview(damageView)
        damageView.addSubview(damageViewTextLabel)
        bottomLayerView.addSubview(criticalDamageView)
        criticalDamageView.addSubview(criticalDamageViewTextLabel)
        
        bottomLayerView.leadingAnchor.constraint(
            equalTo: weaponImageView.trailingAnchor
        ).isActive = true
        bottomLayerView.trailingAnchor.constraint(
            equalTo: firstLayerView.trailingAnchor
        ).isActive = true
        bottomLayerView.bottomAnchor.constraint(
            equalTo: firstLayerView.bottomAnchor
        ).isActive = true
        bottomLayerView.heightAnchor.constraint(
            equalTo: firstLayerView.heightAnchor,
            multiplier: 1 / 4
        ).isActive = true
        
        priceView.leadingAnchor.constraint(
            equalTo: bottomLayerView.leadingAnchor
        ).isActive = true
        priceView.topAnchor.constraint(
            equalTo: bottomLayerView.topAnchor
        ).isActive = true
        priceView.bottomAnchor.constraint(
            equalTo: bottomLayerView.bottomAnchor
        ).isActive = true
        priceView.widthAnchor.constraint(
            equalTo: bottomLayerView.widthAnchor,
            multiplier: 1 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: priceViewTextLabel,
            anchorView: priceView
        )
        
        gripView.leadingAnchor.constraint(
            equalTo: priceView.trailingAnchor,
            constant: 1
        ).isActive = true
        gripView.topAnchor.constraint(
            equalTo: bottomLayerView.topAnchor
        ).isActive = true
        gripView.bottomAnchor.constraint(
            equalTo: bottomLayerView.bottomAnchor
        ).isActive = true
        gripView.widthAnchor.constraint(
            equalTo: bottomLayerView.widthAnchor,
            multiplier: 1 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: gripViewTextLabel,
            anchorView: gripView
        )
        
        typeView.leadingAnchor.constraint(
            equalTo: gripView.trailingAnchor,
            constant: 1
        ).isActive = true
        typeView.topAnchor.constraint(
            equalTo: bottomLayerView.topAnchor
        ).isActive = true
        typeView.bottomAnchor.constraint(
            equalTo: bottomLayerView.bottomAnchor
        ).isActive = true
        typeView.widthAnchor.constraint(
            equalTo: bottomLayerView.widthAnchor,
            multiplier: 2 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: typeViewTextLabel,
            anchorView: typeView
        )
        
        damageView.leadingAnchor.constraint(
            equalTo: typeView.trailingAnchor,
            constant: 1
        ).isActive = true
        damageView.topAnchor.constraint(
            equalTo: bottomLayerView.topAnchor
        ).isActive = true
        damageView.bottomAnchor.constraint(
            equalTo: bottomLayerView.bottomAnchor
        ).isActive = true
        damageView.widthAnchor.constraint(
            equalTo: bottomLayerView.widthAnchor,
            multiplier: 1 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: damageViewTextLabel,
            anchorView: damageView
        )
        
        criticalDamageView.leadingAnchor.constraint(
            equalTo: damageView.trailingAnchor,
            constant: 1
        ).isActive = true
        criticalDamageView.topAnchor.constraint(
            equalTo: bottomLayerView.topAnchor
        ).isActive = true
        criticalDamageView.bottomAnchor.constraint(
            equalTo: bottomLayerView.bottomAnchor
        ).isActive = true
        criticalDamageView.widthAnchor.constraint(
            equalTo: bottomLayerView.widthAnchor,
            multiplier: 2 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: criticalDamageViewTextLabel,
            anchorView: criticalDamageView
        )
        
    }
    
    func setupBottomHeaderlayerView() {
        firstLayerView.addSubview(bottomHeaderLayerView)
        bottomHeaderLayerView.addSubview(priceHeaderView)
        priceHeaderView.addSubview(priceHeaderViewTextLabel)
        bottomHeaderLayerView.addSubview(gripHeaderView)
        gripHeaderView.addSubview(gripHeaderViewTextLabel)
        bottomHeaderLayerView.addSubview(typeHeaderView)
        typeHeaderView.addSubview(typeHeaderViewTextLabel)
        bottomHeaderLayerView.addSubview(damageHeaderView)
        damageHeaderView.addSubview(damageHeaderViewTextLabel)
        bottomHeaderLayerView.addSubview(criticalDamageHeaderView)
        criticalDamageHeaderView.addSubview(criticalDamageHeaderViewTextLabel)
        
        bottomHeaderLayerView.leadingAnchor.constraint(
            equalTo: bottomLayerView.leadingAnchor
        ).isActive = true
        bottomHeaderLayerView.trailingAnchor.constraint(
            equalTo: bottomLayerView.trailingAnchor
        ).isActive = true
        bottomHeaderLayerView.bottomAnchor.constraint(
            equalTo: bottomLayerView.topAnchor
        ).isActive = true
        bottomHeaderLayerView.heightAnchor.constraint(
            equalTo: bottomLayerView.heightAnchor,
            multiplier: 2 / 4
        ).isActive = true
        
        priceHeaderView.leadingAnchor.constraint(
            equalTo: priceView.leadingAnchor
        ).isActive = true
        priceHeaderView.topAnchor.constraint(
            equalTo: bottomHeaderLayerView.topAnchor
        ).isActive = true
        priceHeaderView.bottomAnchor.constraint(
            equalTo: bottomHeaderLayerView.bottomAnchor
        ).isActive = true
        priceHeaderView.widthAnchor.constraint(
            equalTo: bottomHeaderLayerView.widthAnchor,
            multiplier: 1 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: priceHeaderViewTextLabel,
            anchorView: priceHeaderView
        )
        
        gripHeaderView.leadingAnchor.constraint(
            equalTo: priceHeaderView.trailingAnchor,
            constant: 1
        ).isActive = true
        gripHeaderView.topAnchor.constraint(
            equalTo: bottomHeaderLayerView.topAnchor
        ).isActive = true
        gripHeaderView.bottomAnchor.constraint(
            equalTo: bottomHeaderLayerView.bottomAnchor
        ).isActive = true
        gripHeaderView.widthAnchor.constraint(
            equalTo: bottomHeaderLayerView.widthAnchor,
            multiplier: 1 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: gripHeaderViewTextLabel,
            anchorView: gripHeaderView
        )
        
        typeHeaderView.leadingAnchor.constraint(
            equalTo: gripHeaderView.trailingAnchor,
            constant: 1
        ).isActive = true
        typeHeaderView.topAnchor.constraint(
            equalTo: bottomHeaderLayerView.topAnchor
        ).isActive = true
        typeHeaderView.bottomAnchor.constraint(
            equalTo: bottomHeaderLayerView.bottomAnchor
        ).isActive = true
        typeHeaderView.widthAnchor.constraint(
            equalTo: bottomHeaderLayerView.widthAnchor,
            multiplier: 2 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: typeHeaderViewTextLabel,
            anchorView: typeHeaderView
        )
        
        damageHeaderView.leadingAnchor.constraint(
            equalTo: typeHeaderView.trailingAnchor,
            constant: 1
        ).isActive = true
        damageHeaderView.topAnchor.constraint(
            equalTo: bottomHeaderLayerView.topAnchor
        ).isActive = true
        damageHeaderView.bottomAnchor.constraint(
            equalTo: bottomHeaderLayerView.bottomAnchor
        ).isActive = true
        damageHeaderView.widthAnchor.constraint(
            equalTo: bottomHeaderLayerView.widthAnchor,
            multiplier: 1 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: damageHeaderViewTextLabel,
            anchorView: damageHeaderView
        )
        
        criticalDamageHeaderView.leadingAnchor.constraint(
            equalTo: damageHeaderView.trailingAnchor,
            constant: 1
        ).isActive = true
        criticalDamageHeaderView.topAnchor.constraint(
            equalTo: bottomHeaderLayerView.topAnchor
        ).isActive = true
        criticalDamageHeaderView.bottomAnchor.constraint(
            equalTo: bottomHeaderLayerView.bottomAnchor
        ).isActive = true
        criticalDamageHeaderView.widthAnchor.constraint(
            equalTo: bottomHeaderLayerView.widthAnchor,
            multiplier: 2 / 7
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: criticalDamageHeaderViewTextLabel,
            anchorView: criticalDamageHeaderView
        )
    }
    
    func setupTextViewLayer() {
        firstLayerView.addSubview(textLayerViewLabel)
        textLayerViewLabel.leadingAnchor.constraint(
            equalTo: weaponImageView.trailingAnchor,
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
            equalTo: bottomHeaderLayerView.topAnchor
        ).isActive = true
    }
    
    private func setupTextLabelsConstraints(TextLabel: UIView, anchorView: UIView) {
        TextLabel.leadingAnchor.constraint(
            equalTo: anchorView.leadingAnchor
        ).isActive = true
        TextLabel.trailingAnchor.constraint(
            equalTo: anchorView.trailingAnchor
        ).isActive = true
        TextLabel.centerXAnchor.constraint(
            equalTo: anchorView.centerXAnchor
        ).isActive = true
        TextLabel.centerYAnchor.constraint(
            equalTo: anchorView.centerYAnchor
        ).isActive = true
    }
    
}
