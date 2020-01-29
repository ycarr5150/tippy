//
//  ViewController.swift
//  tippy
//
//  Created by Yazmin Carrillo on 1/27/20.
//  Copyright © 2020 Yazmin Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        // Left of the ? mark, if it's not valid, change to 0
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        //tipLabel.text = "$\(tip)"
        //totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

