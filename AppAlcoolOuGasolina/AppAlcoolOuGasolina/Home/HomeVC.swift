//
//  ViewController.swift
//  AppAlcoolOuGasolina
//
//  Created by Luiz Claudio Mattos da Silva on 09/06/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

