//
//  ViewController.swift
//  tip
//
//  Created by Ling Lu on 2020-08-14.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var splitPrice: UILabel!
    @IBOutlet weak var numPeople: UITextField!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var defaultTipSelection = 0
    
    
    
    override func viewDidLoad() {
        
        billAmountTextField.becomeFirstResponder()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        let newTip = defaults.integer(forKey: "tipIndex")
        
        tipControl.selectedSegmentIndex = newTip
        
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tipPercent = tipPercentages[tipControl.selectedSegmentIndex]

        let tip = bill * tipPercent
        
        let total = bill + tip
        let numPeeps = Double(numPeople.text!) ?? 1
        let split = total / numPeeps
        
        tipPercentageLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
        splitPrice.text = String(format: "$%.2f",split)
        
    
    }
   
    @IBAction func changeDefaultTip(_ sender: Any) {
       
        print("HELLO IM HERE")
//        let defaultIndex = defaultTip.selectedSegmentIndex ?? 0
//        tipControl.selectedSegmentIndex = defaultIndex
    }
  
}

