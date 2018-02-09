//
//  GreenDayBlock1ViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/4/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

var GrB1classText : String!
var GrB1teacherTextField: String!
var GrB1roomTextField: String!


class InputVC: UIViewController {

    //IB Outlets for the different textfields
    @IBOutlet weak var classEditTextBox: UITextField!
    @IBOutlet weak var teacherNameTextField: UITextField!
    @IBOutlet weak var roomNumberTextField: UITextField!
    
    //IB function to unwind the segue back to what it was before
    @IBAction func saveButton(_ sender: Any) {
        guard let className = classEditTextBox.text , classEditTextBox.text != "" else { return }
        guard let teacherName = teacherNameTextField.text , teacherNameTextField.text != "" else { return }
        guard let roomNumber = roomNumberTextField.text , roomNumberTextField.text != "" else { return }
        userDataServices.instance.createBlock(teacher: teacherName, room: roomNumber, className: className)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
