//
//  ViewController.swift
//  CodePath_Sylvanovich
//
//  Created by Joseph Sylvanovich on 12/26/18.
//  Copyright © 2018 Joseph Sylvanovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bill_field: UITextField!
    @IBOutlet weak var tip_label: UILabel!
    @IBOutlet weak var total_label: UILabel!
    @IBOutlet weak var tip_control: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(bill_field.text!) ?? 0
        let tip = bill * tipPercentages[tip_control.selectedSegmentIndex]
        let total = bill + tip
        
        tip_label.text = String(format: "$%.2f", tip)
        total_label.text = String(format: "$%.2f", total)
    }
    
}

