//
//  AddHomeworkViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/17/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit
import CoreData
import UserNotifications

var GrhomeworkTitleLabel = String()
var GrHWassignment: String = ""
var GrClassroomLabel: String!
var GrDueDateLabel: String!

class AddHomeworkVC: UIViewController, UITextFieldDelegate
{
    var fromDay: String?
    
    //Outlets to the different peices on the app
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var BackDrop: UIView!
    @IBOutlet weak var TextField: UITextView!
    @IBOutlet weak var DueDateTextField: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var useImgBtn: RoundedButton!
    @IBOutlet weak var useTextBtn: RoundedButton!
    @IBOutlet weak var dueDateLbl: UILabel!
    @IBOutlet weak var homeworkLbl: UILabel!
    
    @IBAction func saveButtonPressed(_ sender: Any)
    {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let homeworkAssignment = NSEntityDescription.insertNewObject(forEntityName: "GreenDaySchedule", into: context) as! GreenDaySchedule
        homeworkAssignment.homework = TextField.text
        homeworkAssignment.dueDate = DueDateTextField.text
        homeworkAssignment.classTitle = GrhomeworkTitleLabel
        homeworkAssignment.classColor = fromDay
        
        //Save the data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        self.performSegue(withIdentifier: "GRHWUnwind", sender: self)
        
        let content = UNMutableNotificationContent()
        content.title = "Reminder"

        content.badge = 1
        content.categoryIdentifier = "notificationCategory"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60*60*5, repeats: false)
        
        let requestIndentifier = "GoldDayNotification"
        let request = UNNotificationRequest(identifier: requestIndentifier, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: {Error in
            
            //handle Error here
        })
        
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if fromDay == "Green"
        {
            setGreenDay()
        }
        else if fromDay == "Gold"
        {
            setGoldDay()
        }
        
        BackDrop.layer.borderWidth = 2.5
        BackDrop.layer.borderColor = UIColor.black.cgColor
        //Round Corners
        BackDrop.layer.cornerRadius = 20
        BackDrop.layer.masksToBounds = true
        
        TextField.layer.borderWidth = 1.5
        TextField.layer.borderColor = UIColor(red: (160/255.0), green: (160/255.0), blue: (160/255.0), alpha: 1.0).cgColor
        //Rounded Corners
        TextField.layer.cornerRadius = 10
        TextField.layer.masksToBounds = true
        
        DueDateTextField.layer.borderWidth = 1.5
        DueDateTextField.layer.borderColor = UIColor(red: (160/255.0), green: (160/255.0), blue: (160/255.0), alpha: 1.0).cgColor
        
        DueDateTextField.layer.cornerRadius = 10
        DueDateTextField.layer.masksToBounds = true
        
        //Done Button to dismiss the Keyboard
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        //let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
        
        //toolBar.setItems([flexibleSpace, doneButton], animated: true)
        
        TextField.inputAccessoryView = toolBar
        DueDateTextField.inputAccessoryView = toolBar
    }
    //Swift 4 Conversion broke this
    /*@objc func doneClicked() {
     view.endEditing(true)
     }*/

// Someone Hits The Text Button
    @IBAction func textBtnSelected(_ sender: Any) {
        if fromDay == "Green" {
            useTextBtn.backgroundColor = .DRGreen
        } else {
            useTextBtn.backgroundColor = .DRGold
        }
        
        useTextBtn.setTitleColor(UIColor.white, for: .normal)
        useImgBtn.backgroundColor = UIColor.white
        useImgBtn.setTitleColor(UIColor.darkGray, for: .normal)
    }

// Someone Hits the Image Button
    @IBAction func imageBtnSelected(_ sender: Any) {
        if fromDay == "Green" {
            useImgBtn.backgroundColor = .DRGreen
        } else {
            useImgBtn.backgroundColor = .DRGold
        }
        
        useTextBtn.backgroundColor = UIColor.white
        useTextBtn.setTitleColor(UIColor.darkGray, for: .normal)
        useImgBtn.setTitleColor(UIColor.white, for: .normal)
    }

// This Function will dismiss the view if selected outside the region
    @IBAction func dismissPopUp(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }

// This function will set the necessary labels required when the view is booted
    override func viewWillAppear(_ animated: Bool)
    {
        TitleLabel.text = "Add \(GrhomeworkTitleLabel) Homework"
    }

// Segues information over to view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Information for New Homwework Assignment
        
        if TextField.text != nil
        {
            let textEdit = TextField.text.replacingOccurrences(of: "HW:", with: " ")
            GrHWassignment = textEdit
        }
        
        if let newDueDate = DueDateTextField.text
        {
            GrDueDateLabel = "Due: \(newDueDate)"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
        
    }
    
// This function sets the parameters for the colors of Green Day
    func setGreenDay() {
        homeworkLbl.textColor = .DRGreen
        dueDateLbl.textColor = .DRGreen
        addBtn.backgroundColor = .DRGreen
        useTextBtn.backgroundColor = .DRGreen
    }
    
// This function sets the parameters for the colors of Gold Day
    func setGoldDay() {
        homeworkLbl.textColor = .DRGold
        dueDateLbl.textColor = .DRGold
        addBtn.backgroundColor = .DRGold
        useTextBtn.backgroundColor = .DRGold
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        
        self.view.endEditing(true)
        return true
    }
}
