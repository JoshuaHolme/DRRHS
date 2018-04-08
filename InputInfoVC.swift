//
//  InputInfoVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/4/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

//Variables

class InputInfoVC: UIViewController
{

    var blockName: String!
    var blockColor: UIColor!
    var teacherBtnPressed = false
    
    //IB Outlets
    @IBOutlet weak var chooseTeacherButton: RoundedButton!
    @IBOutlet weak var blockNameLbl: UILabel!
    @IBOutlet weak var saveBtn: UIButton!
    
    @IBOutlet weak var classEditTextBox: UITextField!
    @IBOutlet weak var teacherNameTextField: UITextField!
//    @IBOutlet weak var roomNumberTextField: UITextField!
    @IBOutlet weak var teacherEmailTextField: UITextField!
    @IBOutlet weak var teacherWesbiteTextField: UITextField!
    @IBOutlet weak var pickTeacherBtn: RoundedButton!
    
    //IB function to unwind the segue back to what it was before
    @IBAction func saveButton(_ sender: Any)
    {
        guard let className = classEditTextBox.text , classEditTextBox.text != "" else { return }
        let teacherInfo = "\(String(describing: teacherNameTextField.text!)),\(String(describing: teacherEmailTextField.text!)),\(String(describing: teacherWesbiteTextField.text!))"
//        guard let roomNumber = roomNumberTextField.text , roomNumberTextField.text != "" else { return }
        
        userDataServices.instance.createBlock(teacher: teacherInfo, className: className)
        
        performSegue(withIdentifier: INPUT_UNWIND, sender: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        blockNameLbl.text = blockName
        blockNameLbl.textColor = blockColor
        chooseTeacherButton.backgroundColor = blockColor
        saveBtn.setTitleColor(blockColor, for: .normal)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if teacherBtnPressed == true
        {
            let vc = segue.destination as? DirectoryTC
            vc?.fromInputInfo = true
        }
    }
    
    // IB Actions
    @IBAction func pickTeacherBtnPressed(_ sender: Any)
    {
        teacherBtnPressed = true
        performSegue(withIdentifier: FROM_SETTINGS_TO_DIRECTORY, sender: self)
    }
    
    @IBAction func unwindSegueFromDirectory(_ sender: UIStoryboardSegue)
    {
        
    }
}
