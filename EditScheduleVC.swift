//
//  EditScheduleVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/15/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit
class EditScheduleVC: UIViewController
{
    
    // MARK: - Variables
    var selectedClass = ""
    var selectedColor: UIColor!
    var day: String!
    
    // MARK: - IBOutlets
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var editBlockOneBtn: RoundedButton!
    @IBOutlet weak var editBlockTwoBtn: RoundedButton!
    @IBOutlet weak var editBlockThreeBtn: RoundedButton!
    @IBOutlet weak var editBlockFourBtn: RoundedButton!
    
    // MARK: - Functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if day == "Green"
        {
            dayLbl.text = "Green Day"
            editBlockOneBtn.backgroundColor = .DRGreen
            editBlockTwoBtn.backgroundColor = .DRGreen
            editBlockThreeBtn.backgroundColor = .DRGreen
            editBlockFourBtn.backgroundColor = .DRGreen
        }
        else
        {
            dayLbl.text = "Gold Day"
            editBlockOneBtn.backgroundColor = .DRGold
            editBlockTwoBtn.backgroundColor = .DRGold
            editBlockThreeBtn.backgroundColor = .DRGold
            editBlockFourBtn.backgroundColor = .DRGold
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == TO_INPUT_VC
        {
            let vc = segue.destination as! InputInfoVC
            vc.blockName = selectedClass
            vc.blockColor = selectedColor
        }
    }
    
    // MARK: - IBActions
    @IBAction func editGRB1Pressed(_ sender: Any)
    {
        selectedClass = "Block 1"
        
        if day == "Green"
        {
            userDataServices.instance.setIdentifier(block: GRB1)
            selectedColor = .DRGreen
        }
        else
        {
            userDataServices.instance.setIdentifier(block: GOB1)
            selectedColor = .DRGold
        }
        
        performSegue(withIdentifier: TO_INPUT_VC, sender: nil)
    }
    
    @IBAction func editGRB2Pressed(_ sender: Any)
    {
        selectedClass = "Block 2"
        
        if day == "Green"
        {
            userDataServices.instance.setIdentifier(block: GRB2)
            selectedColor = .DRGreen
        }
        else
        {
            userDataServices.instance.setIdentifier(block: GOB2)
            selectedColor = .DRGold
        }
        
        performSegue(withIdentifier: TO_INPUT_VC, sender: nil)
    }
    
    @IBAction func editGRB3Pressed(_ sender: Any)
    {
        selectedClass = "Block 3"
        
        if day == "Green"
        {
            userDataServices.instance.setIdentifier(block: GRB3)
            selectedColor = .DRGreen
        }
        else
        {
            userDataServices.instance.setIdentifier(block: GOB3)
            selectedColor = .DRGold
        }
        
        performSegue(withIdentifier: TO_INPUT_VC, sender: nil)
    }
    
    @IBAction func editGRB4Pressed(_ sender: Any)
    {
        selectedClass = "Block 4"
        
        if day == "Green"
        {
            userDataServices.instance.setIdentifier(block: GRB4)
            selectedColor = .DRGreen
        }
        else
        {
            userDataServices.instance.setIdentifier(block: GOB4)
            selectedColor = .DRGold
        }
        
        performSegue(withIdentifier: TO_INPUT_VC, sender: nil)
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue)
    {
        
    }
}
