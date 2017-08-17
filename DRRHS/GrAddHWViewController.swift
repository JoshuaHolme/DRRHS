//
//  AddHomeworkViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/17/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

var GrhomeworkTitleLabel = String()
var GrHWassignment: String!
var GrClassroomLabel: String!
var GrDueDateLabel: String!

class GrAddHWViewController: UIViewController {

    //Outlets to the different peices on the app
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var BackDrop: UIView!
    @IBOutlet weak var TextField: UITextView!
    @IBOutlet weak var DueDateTextField: UITextField!
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GRHWUnwind", sender: self)
        GrHomeworkAssignments.append(GrHWassignment)
        GrClassRoomNames.append(GrhomeworkTitleLabel)
        GrDueDates.append(GrDueDateLabel)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BackDrop.layer.borderWidth = 2.5
        BackDrop.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        //Round Corners
        BackDrop.layer.cornerRadius = 20
        BackDrop.layer.masksToBounds = true
    }
    
    @IBAction func dismissPopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        TitleLabel.text = "Add \(GrhomeworkTitleLabel) Homework"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Information for New Homwework Assingment
        if let newHomeworkAssignment = TextField.text {
            GrHWassignment = newHomeworkAssignment
        }
        if let newDueDate = DueDateTextField.text {
            GrDueDateLabel = newDueDate
        }
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
