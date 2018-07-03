//
//  ViewController.swift
//  window-shopper
//
//  Created by Raul Ernesto Villarreal Sigala on 7/2/18.
//  Copyright © 2018 Raul Ernesto Villarreal Sigala. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var txtWage: CurrencyTxtField!
    @IBOutlet weak var txtPrice: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnCalc = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        btnCalc.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        btnCalc.setTitle("Calculate", for: .normal)
        btnCalc.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btnCalc.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        txtWage.inputAccessoryView = btnCalc
        txtPrice.inputAccessoryView = btnCalc
        
    }

    @objc func calculate() {
        print("hola")
    }


}

