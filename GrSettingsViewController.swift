//
//  GrSettingsViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/15/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

//BLOCK 1 CORE DATA
var GrB1ClassLabelSaved = String()
var GrB1TeacherLabelSaved = String()
var GrB1RoomLabelSaved = String()

//BLOCK 2 CORE DATA
var GrB2ClassLabelSaved = String()
var GrB2TeacherLabelSaved = String()
var GrB2RoomLabelSaved = String()

//BLOCK 3 CORE DATA
var GrB3ClassLabelSaved = String()
var GrB3TeacherLabelSaved = String()
var GrB3RoomLabelSaved = String()

//BLOCK 4 CORE DATA
var GrB4ClassLabelSaved = String()
var GrB4TeacherLabelSaved = String()
var GrB4RoomLabelSaved = String()

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
