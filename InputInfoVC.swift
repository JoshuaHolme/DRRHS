//
//  InputInfoVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/4/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

//Variables
var GrB1classText : String!
var GrB1teacherTextField: String!
var GrB1roomTextField: String!

class InputInfoVC: UIViewController
{

    var blockName: String!
    var blockColor: UIColor!
    
    //IB Outlets
    @IBOutlet weak var blockNameLbl: UILabel!
    @IBOutlet weak var saveBtn: UIButton!
    
    @IBOutlet weak var classEditTextBox: UITextField!
    @IBOutlet weak var teacherNameTextField: UITextField!
    @IBOutlet weak var roomNumberTextField: UITextField!
    
    //IB function to unwind the segue back to what it was before
    @IBAction func saveButton(_ sender: Any)
    {
        guard let className = classEditTextBox.text , classEditTextBox.text != "" else { return }
        guard let teacherName = teacherNameTextField.text , teacherNameTextField.text != "" else { return }
        guard let roomNumber = roomNumberTextField.text , roomNumberTextField.text != "" else { return }
        
        userDataServices.instance.createBlock(teacher: teacherName, room: roomNumber, className: className)
        
        performSegue(withIdentifier: INPUT_UNWIND, sender: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        blockNameLbl.text = blockName
        blockNameLbl.textColor = blockColor
        saveBtn.setTitleColor(blockColor, for: .normal)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }

}
