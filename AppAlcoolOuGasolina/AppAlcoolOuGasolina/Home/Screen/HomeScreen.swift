//
//  HomeScreen.swift
//  AppAlcoolOuGasolina
//
//  Created by Luiz Claudio Mattos da Silva on 09/06/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG HOME")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(backgroundImageView)
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
            
        ])
    }
    
}
