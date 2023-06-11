//
//  CalculatorVC.swift
//  AppAlcoolOuGasolina
//
//  Created by Luiz Claudio Mattos da Silva on 11/06/23.
//

import UIKit

class CalculatorVC: UIViewController {
    
    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
