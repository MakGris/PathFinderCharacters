//
//  EquipmentCell.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 22.03.2023.
//

import UIKit

class EquipmentCell: UITableViewCell {
    
    static let equipmentReuseId = "equipmentCell"
    //MARK: - First layer
    private let firstLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(
            red: 139/255,
            green: 69/255,
            blue: 19/255,
            alpha: 1
        ).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - Image layer
    
    private let equipmentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor(
            red: 139/255,
            green: 69/255,
            blue: 19/255,
            alpha: 1
        ).cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    //MARK: - Top layer
    
    private let topLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(
            red: 139/255,
            green: 69/255,
            blue: 19/255,
            alpha: 1
        )
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let priceView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let priceViewTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //    MARK: - Text layer
    
    private let textLayerViewLabel: UILabel = {
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
        setupEquipmentImageView()
        setupTopLayerView()
        setupTextViewLayer()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func equipmentCellSet(with equipment: Equipment) {
        textLayerViewLabel.text = equipment.description
        nameViewTextLabel.text = equipment.name
        priceViewTextLabel.text = equipment.price
//        Заглушка
        equipmentImageView.image = UIImage(named: "sword")
    }
    
    private func setupFirstLayer() {
        contentView.addSubview(firstLayerView)
        firstLayerView.fillSuperview(padding: Constants.cardInsets)
        firstLayerView.layer.cornerRadius = 10
        firstLayerView.clipsToBounds = true
    }
    
    private func setupEquipmentImageView() {
        firstLayerView.addSubview(equipmentImageView)
        equipmentImageView.topAnchor.constraint(
            equalTo: firstLayerView.topAnchor
        ).isActive = true
        equipmentImageView.leadingAnchor.constraint(
            equalTo: firstLayerView.leadingAnchor)
        .isActive = true
        equipmentImageView.heightAnchor.constraint(
            equalTo: firstLayerView.heightAnchor
        ).isActive = true
        equipmentImageView.widthAnchor.constraint(
            equalTo: firstLayerView.widthAnchor,
            multiplier: 1 / 4
        ).isActive = true
    }
    
    private func setupTopLayerView() {
        firstLayerView.addSubview(topLayerView)
        topLayerView.topAnchor.constraint(
            equalTo: firstLayerView.topAnchor
        ).isActive = true
        topLayerView.leadingAnchor.constraint(
            equalTo: equipmentImageView.trailingAnchor
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
            multiplier: 2 / 3
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
            equalTo: topLayerView.heightAnchor
        ).isActive = true
        priceView.leadingAnchor.constraint(
            equalTo: nameView.trailingAnchor,
            constant: 1
        ).isActive = true
        priceView.widthAnchor.constraint(
            equalTo: topLayerView.widthAnchor,
            multiplier: 1 / 3
        ).isActive = true
        
        setupTextLabelsConstraints(
            TextLabel: priceViewTextLabel,
            anchorView: priceView
        )
    }
    
    private func setupTextViewLayer() {
        firstLayerView.addSubview(textLayerViewLabel)
        textLayerViewLabel.leadingAnchor.constraint(
            equalTo: equipmentImageView.trailingAnchor,
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
