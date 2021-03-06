//
//  GoAddHWViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/28/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit
import CoreData
import UserNotifications

var GohomeworkTitleLabel = String()
var GoHWassignment: String!
var GoClassroomLabel: String!
var GoDueDateLabel: String!

class GoAddHWViewController: UIViewController, UITextFieldDelegate{
    
    //Outlets to the different peices on the app
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var BackDrop: UIView!
    @IBOutlet weak var TextField: UITextView!
    @IBOutlet weak var DueDateTextField: UITextField!
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let employee = NSEntityDescription.insertNewObject(forEntityName: "GoldDaySchedule", into: context) as! GoldDaySchedule
        employee.homework = GoHWassignment
        employee.dueDate = GoDueDateLabel
        employee.classTitle = GohomeworkTitleLabel
        
        
        //Save the data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        self.performSegue(withIdentifier: "GOHWUnwind", sender: self)
        
        let content = UNMutableNotificationContent()
        content.title = "Reminder"
        if GreenDayHomework.count > 1 {
        content.body = "Don't Forget You Have \(GreenDayHomework.count) Green Day Homework Assignments Due Soon"
        }
        else if GreenDayHomework.count > 0{
            content.body = "You Only Have 1 Green Day Assignment Due Soon"
        }
        else {
            content.body = "You Have No Homework Assignments Due For Green Day! Awesome!"
        }
        content.badge = 1
        content.categoryIdentifier = "notificationCategory"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60*60*5, repeats: false)
        
        let requestIndentifier = "GoldDayNotification"
        let request = UNNotificationRequest(identifier: requestIndentifier, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: {Error in
            
            //handle Error here
        })
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([flexibleSpace, doneButton], animated: true)
        
        TextField.inputAccessoryView = toolBar
        DueDateTextField.inputAccessoryView = toolBar
    }
    func doneClicked() {
        view.endEditing(true)
    }
    
    @IBAction func dismissPopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        TitleLabel.text = "Add \(GohomeworkTitleLabel) Homework"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Information for New Homwework Assingment
        
        if TextField.text != nil {
            let textEdit = TextField.text.replacingOccurrences(of: "HW:", with: " ")
            GoHWassignment = textEdit
        }
        if let newDueDate = DueDateTextField.text {
            GoDueDateLabel = "Due: \(newDueDate)"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        return true
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
