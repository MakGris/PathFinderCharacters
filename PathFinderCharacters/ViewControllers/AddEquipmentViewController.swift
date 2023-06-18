//
//  AddEquipmentViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 26.03.2023.
//

import UIKit
import PhotosUI

class AddEquipmentViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate, PHPickerViewControllerDelegate {
    
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
//        Отвечает за отображение картинки во вью, сейчас картинка сжимается, чтобы поместиться
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
        textField.returnKeyType = .next
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
        textField.returnKeyType = .next
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //    MARK: - Text layer
    
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.returnKeyType = .done
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
    //    MARK: - Buttons
    
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
        button.layer.masksToBounds = false
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        button.layer.shadowRadius = 2.0
        button.layer.shadowOpacity = 0.5
        return button
    }()
    
    private lazy var imagePickerButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(addNewPicture), for:.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.masksToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFirstLayer()
        setupEquipmentImageView()
        setupTopLayerView()
        setupTextViewLayer()
        setupBottomLayer()
        priceViewTextField.delegate = self
        nameViewTextField.delegate = self
        descriptionTextView.delegate = self
    }
    
    // MARK: - PlaceHolder TextView
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
    // MARK: - Dismiss keyboard by tap outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - Next Textfield by pressing return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameViewTextField {
            priceViewTextField.becomeFirstResponder()
        } else {
            descriptionTextView.becomeFirstResponder()
        }
        return true
    }
    // MARK: - Dismiss keyboard by done button in textView
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
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
        firstLayerView.addSubview(imagePickerButton)
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
        imagePickerButton.heightAnchor.constraint(
            equalTo: equipmentImageView.heightAnchor
        ).isActive = true
        imagePickerButton.widthAnchor.constraint(
            equalTo: equipmentImageView.widthAnchor
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
    }
}


extension AddEquipmentViewController {
    
    @objc func addNewEquipment() {
        saveButton.pulsate()
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
        if !name.isEmpty && !price.isEmpty && !description.isEmpty {
            equipment = Equipment(name: name, description: description , price: price)
            self.delegate.addEquipment(equipment: equipment)
            dismiss(animated: true)
        }
    }
    
    @objc func addNewPicture() {
       presentPickerView()
    }

    func presentPickerView() {
        var configuration = PHPickerConfiguration()
        configuration.filter = PHPickerFilter.images
        configuration.selectionLimit = 1

        let photoPicker = PHPickerViewController(configuration: configuration)
        photoPicker.delegate = self
        self.present(photoPicker, animated: true)
    }

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        for item in results {
            item.itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                if let image = image as? UIImage {
                    DispatchQueue.main.async {
                        self.equipmentImageView.image = image
                    }
                }
            }
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
