//
//  AddEquipmentViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 26.03.2023.
//

import UIKit

class AddEquipmentViewController: UIViewController, UITextViewDelegate {
    
    weak var delegate: AddEquipmentDelegate!
    var equipment: Equipment!
    
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
//        imageView.backgroundColor = .red
        imageView.image = UIImage(systemName: "photo.on.rectangle")?.withTintColor(UIColor(
            red: 214/255,
            green: 186/255,
            blue: 115/255,
            alpha: 1
        ), renderingMode: .alwaysOriginal)
        imageView.contentMode = .scaleAspectFit
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
    
    private let nameViewTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        textField.textColor = .white
        textField.textAlignment = .center
//        custom color for placeholder
//        textField.attributedPlaceholder = NSAttributedString(string: "Введите имя", attributes: [NSAttributedString.Key.foregroundColor : UIColor(
//            red: 86/255,
//            green: 73/255,
//            blue: 76/255,
//            alpha: 1
//        )])
        textField.placeholder = "Введите имя"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let priceView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let priceViewTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        textField.textColor = .white
        textField.textAlignment = .center
        textField.placeholder = "Введите цену"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //    MARK: - Text layer
    
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    
//    MARK: - Bottom layer
    private let bottomLayerView: UIView = {
        let view = UIView()
//        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
//    MARK: - Button
    
    private lazy var saveButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(
            red: 214/255,
            green: 186/255,
            blue: 115/255,
            alpha: 1
        )
        button.setTitle("Добавить", for: .normal)
        button.setTitleColor(UIColor(
            red: 86/255,
            green: 73/255,
            blue: 76/255,
            alpha: 1
        ),
        for: .normal
        )
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.addTarget(self, action: #selector(addNewEquipment), for:.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFirstLayer()
        setupEquipmentImageView()
        setupTopLayerView()
//        setupSaveButtonView()
        setupTextViewLayer()
        setupBottomLayer()
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.isFirstResponder && textView.textColor == .lightGray {
            textView.text = nil
            textView.textColor = .black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty || textView.text == "" {
                textView.textColor = .lightGray
                textView.text = "Введите описание снаряжения..."
            }
    }
    private func setupFirstLayer() {
        view.addSubview(firstLayerView)
        firstLayerView.layer.cornerRadius = 10
        firstLayerView.clipsToBounds = true
        firstLayerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        firstLayerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        firstLayerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstLayerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
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
        nameView.addSubview(nameViewTextField)
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
        
        nameView.setupTextLabelsConstraints(
            TextLabel: nameViewTextField,
            anchorView: nameView
        )
        
        topLayerView.addSubview(priceView)
        priceView.addSubview(priceViewTextField)
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
        
        priceView.setupTextLabelsConstraints(
            TextLabel: priceViewTextField,
            anchorView: priceView
        )
    }
    
    private func setupTextViewLayer() {
        firstLayerView.addSubview(descriptionTextView)
        descriptionTextView.leadingAnchor.constraint(
            equalTo: equipmentImageView.trailingAnchor,
            constant: 5
        ).isActive = true
        descriptionTextView.trailingAnchor.constraint(
            equalTo: firstLayerView.trailingAnchor,
            constant: -5
        ).isActive = true
        descriptionTextView.topAnchor.constraint(
            equalTo: topLayerView.bottomAnchor
        ).isActive = true
        descriptionTextView.heightAnchor.constraint(
            equalTo: firstLayerView.heightAnchor,
            multiplier: 1 / 3
        ).isActive = true
        descriptionTextView.textColor = .lightGray
        descriptionTextView.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        descriptionTextView.textAlignment = .left
        descriptionTextView.text = "Введите описание снаряжения..."
        descriptionTextView.delegate = self
    }
    
    private func setupBottomLayer() {
        firstLayerView.addSubview(bottomLayerView)
        bottomLayerView.addSubview(saveButton)
        bottomLayerView.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor).isActive = true
        bottomLayerView.leadingAnchor.constraint(equalTo: equipmentImageView.trailingAnchor).isActive = true
        bottomLayerView.trailingAnchor.constraint(equalTo: firstLayerView.trailingAnchor).isActive = true
        bottomLayerView.bottomAnchor.constraint(equalTo: firstLayerView.bottomAnchor).isActive = true
        saveButton.centerXAnchor.constraint(equalTo: bottomLayerView.centerXAnchor).isActive = true
        saveButton.centerYAnchor.constraint(equalTo: bottomLayerView.centerYAnchor).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        saveButton.widthAnchor.constraint(equalToConstant: 90).isActive = true
//        saveButton.heightAnchor.constraint(equalTo: bottomLayerView.heightAnchor, multiplier: 1 / 4).isActive = true
    }
}
extension AddEquipmentViewController {
    @objc func addNewEquipment() {
        guard let name = nameViewTextField.text else { return }
        if name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            showAlert(with: "Не введено название снаряжения", and: "Введите название и попробуйте снова")
        }
        
        guard let price = priceViewTextField.text else { return }
        if price.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            showAlert(with: "Не введена стоимость снаряжения", and: "Введите стоимость и попробуйте снова")
        }
        guard let description = descriptionTextView.text else { return }
        if description.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            showAlert(with: "Не введено описание снаряжения", and: "Введите описание и попробуйте снова")
        }
        if !name.isEmpty && !price.isEmpty && description.isEmpty {
        equipment = Equipment(name: name, description: description , price: price)
            self.delegate.addEquipment(equipment: equipment)
        }
    }
    
    private func showAlert(with title: String, and message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            alertController.dismiss(animated: true)
        }
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
