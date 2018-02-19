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
            addBtn.setTitleColor(.DRGreen, for: .normal)
        }
        else if fromDay == "Gold"
        {
            addBtn.setTitleColor(.DRGold, for: .normal)
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
    
    @IBAction func dismissPopUp(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        TitleLabel.text = "Add \(GrhomeworkTitleLabel) Homework"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        //Information for New Homwework Assingment
        
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        
        self.view.endEditing(true)
        return true
    }
}
