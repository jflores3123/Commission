//
//  ViewController.swift
//  Commission
//
//  Created by Johan Flores  on 07/07/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BasePayLabel: UILabel!
    @IBOutlet weak var TotalPayLabel: UILabel!
    @IBOutlet weak var CommissionPayTextField: UITextField!
 
    let basePay = 500.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BasePayLabel.text = "$\(basePay)"
        TotalPayLabel.text = ""
    }
    @IBAction func WhenButtonPressed(_ sender: UIButton) {
        let dataString = CommissionPayTextField.text!
        let commissionPay = Double(dataString) ?? 5.0
        let totalPay = basePay + commissionPay
        TotalPayLabel.text = "$\(totalPay)"
    }
    

}

