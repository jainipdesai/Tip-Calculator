//
//  ViewController.swift
//  TipCalc
//
//  Created by Jainip Desai on 8/9/17.
//  Copyright © 2017 Jainip Desai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        let tipIndex = defaults.integer(forKey: "DefaultForTip")
        
        self.tipControl.selectedSegmentIndex = tipIndex
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        let defaults = UserDefaults.standard
        
        let tipIndex = defaults.integer(forKey: "DefaultForTip")
        
        self.tipControl.selectedSegmentIndex = tipIndex
        
        calculateTip(self)
        
        // Do any additional setup after loading the view.
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
    
        let defaults = UserDefaults.standard
        defaults.set(tipControl.selectedSegmentIndex, forKey: "DefaultForTip")
        defaults.synchronize()
        
        let tipPercentages = [0.18, 0.20, 0.25]

        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        if (tipControl.selectedSegmentIndex == 0)
        {tipLabel.textColor =  UIColor.red}
        else if(tipControl.selectedSegmentIndex == 1)
        {tipLabel.textColor =  UIColor.blue}
        else if (tipControl.selectedSegmentIndex == 2)
        {tipLabel.textColor =  UIColor.green}
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

