//
//  SettingsViewController.swift
//  tip
//
//  Created by Design Work on 2020-08-14.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit
class SettingsViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var defaultTip:
        UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let currentDefaultTip = defaults.integer(forKey: "tipIndex")
        defaultTip.selectedSegmentIndex = currentDefaultTip
    }
    @IBAction func changeDefaultTip(_ sender: Any) {
        let newDefault = defaultTip.selectedSegmentIndex
        
        let defaults = UserDefaults.standard
        defaults.set(newDefault, forKey:"tipIndex")
        defaults.set(true, forKey: "defaultChanged")
        defaults.synchronize()
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
