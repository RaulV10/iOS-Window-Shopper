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
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblHours: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnCalc = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        btnCalc.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        btnCalc.setTitle("Calculate", for: .normal)
        btnCalc.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btnCalc.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        txtWage.inputAccessoryView = btnCalc
        txtPrice.inputAccessoryView = btnCalc
        
        lblResult.isHidden = true
        lblHours.isHidden = true
    }

    @objc func calculate() {
        if let txtWage = txtWage.text, let txtPrice = txtPrice.text {
            if let wage = Double(txtWage), let price = Double(txtPrice) {
                view.endEditing(true)
                lblResult.isHidden = false
                lblHours.isHidden = false
                
                lblResult.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculationPressed(_ sender: Any) {
        lblResult.isHidden = true
        lblHours.isHidden = true
        
        txtWage.text = ""
        txtPrice.text = ""
    }
    
}

