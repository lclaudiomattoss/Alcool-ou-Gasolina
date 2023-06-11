//
//  CalculatorScreen.swift
//  AppAlcoolOuGasolina
//
//  Created by Luiz Claudio Mattos da Silva on 11/06/23.
//

import UIKit

class CalculatorScreen: UIView {
    
    lazy var backgroundImage: UIImageView = {
        let image:UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG BLUR DARK")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image:UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO menor")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var ethanolTextField: UITextField = {
        let textField:UITextField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.placeholder = "Preço do Álcool"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var gasTextField: UITextField = {
        let textField:UITextField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.placeholder = "Preço do Álcool"
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var calculateButton: UIButton = {
        let button:UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Calcular", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
//        button.addTarget(self, action: #selector(self.tappedCalculateButton), for: .touchUpInside)
        return button
    }()
    
//    @objc private func tappedCalculateButton(_ sender: UIButton){
        
//    }
    
    lazy var backButton: UIButton = {
        let button:UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Botão Back"), for: .normal)
//        button.addTarget(self, action: #selector(self.tappedBackButton), for: .touchUpInside)
        return button
    }()
    
//    @objc private func tappedBackButton(_ sender: UIButton){
        
//    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        addSubview(logoAppImageView)
        addSubview(ethanolTextField)
        addSubview(gasTextField)
        addSubview(calculateButton)
        addSubview(backButton)
        
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private  func configConstraints(){
        
        NSLayoutConstraint.activate([
            
            self.backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            self.backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            self.backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            self.backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            self.backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            self.backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            self.logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 150),
            self.logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            self.logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            self.ethanolTextField.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 134),
            self.ethanolTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            self.ethanolTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            self.ethanolTextField.heightAnchor.constraint(equalToConstant: 45),
            
            self.gasTextField.topAnchor.constraint(equalTo: ethanolTextField.bottomAnchor, constant: 16),
            self.gasTextField.leadingAnchor.constraint(equalTo: ethanolTextField.leadingAnchor),
            self.gasTextField.trailingAnchor.constraint(equalTo: ethanolTextField.trailingAnchor),
            self.gasTextField.heightAnchor.constraint(equalTo: ethanolTextField.heightAnchor),
            
            self.calculateButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -135),
            self.calculateButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            self.calculateButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            self.calculateButton.heightAnchor.constraint(equalToConstant: 44),
            
        ])
    }
    
}
