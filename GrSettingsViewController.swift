//
//  GrSettingsViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/15/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit
class GrSettingsViewController: UIViewController {
    
    @IBAction func editGRB1Pressed(_ sender: Any) {
        userDataServices.instance.setIdentifier(block: GRB1)
        performSegue(withIdentifier: TO_INPUT_VC, sender: nil)
    }
    @IBAction func editGRB2Pressed(_ sender: Any) {
        userDataServices.instance.setIdentifier(block: GRB2)
        performSegue(withIdentifier: TO_INPUT_VC, sender: nil)
    }
    @IBAction func editGRB3Pressed(_ sender: Any) {
        userDataServices.instance.setIdentifier(block: GRB3)
        performSegue(withIdentifier: TO_INPUT_VC, sender: nil)
    }
    @IBAction func editGRB4Pressed(_ sender: Any) {
        userDataServices.instance.setIdentifier(block: GRB4)
        performSegue(withIdentifier: TO_INPUT_VC, sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
