//
//  HomeScreen.swift
//  AppAlcoolOuGasolina
//
//  Created by Luiz Claudio Mattos da Silva on 09/06/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var backgroundImageView: UIImageView = {
        let image:UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG HOME")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image:UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var startButton: UIButton = {
        let button:UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Começar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 230/255, green: 0/255, blue: 127/255, alpha: 1.0)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        return button
    }()
    
    @objc private func tappedLoginButton(_ sender: UIButton){
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(backgroundImageView)
        addSubview(logoAppImageView)
        addSubview(startButton)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    private  func configConstraints(){
        
        NSLayoutConstraint.activate([
            
            self.backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            self.backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            self.backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            self.backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            self.logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            self.logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            self.logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            self.startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            self.startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            self.startButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -125),
            self.startButton.heightAnchor.constraint(equalToConstant: 44)
            
        ])
    }
    
}
