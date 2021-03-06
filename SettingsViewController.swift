//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Jainip Desai on 8/11/17.
//  Copyright © 2017 Jainip Desai. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        let tipIndex = defaults.integer(forKey: "DefaultForTip")
        
        self.defaultTipControl.selectedSegmentIndex =    tipIndex
      // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func defaultTipCont(_ sender: Any) {
        
        
        let defaults = UserDefaults.standard
        
       defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "DefaultForTip")
    
        defaults.synchronize()
        
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
