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

class AddHomeworkVC: UIViewController, UITextFieldDelegate
{
    // Some Variables
    var fromDay: String?
    var classTitleLabel = String()
    var currentDate = Date()
    var identity = String()
    var calendar = Calendar.current
    
    var dueDate = ""
    
    //Outlets to the different peices on the app
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var BackDrop: UIView!
    @IBOutlet weak var TextField: UITextView!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var useImgBtn: RoundedButton!
    @IBOutlet weak var useTextBtn: RoundedButton!
    @IBOutlet weak var dueDateLbl: UILabel!
    @IBOutlet weak var homeworkLbl: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBAction func saveButtonPressed(_ sender: Any)
    {
        if dueDate == ""
        {
            let alert = UIAlertController(title: "Uh Oh!", message: "Don't forget to change the due date.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
            let homeworkAssignment = NSEntityDescription.insertNewObject(forEntityName: "GreenDaySchedule", into: context) as! GreenDaySchedule
            homeworkAssignment.homework = TextField.text
            homeworkAssignment.dueDate = dueDate
            homeworkAssignment.classTitle = classTitleLabel
            homeworkAssignment.classColor = fromDay
            homeworkAssignment.identityCode = identity
            
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
                // handle Error here
            })
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        generalSetup()
        
        if fromDay == "Green"
        {
            setGreenDay()
        }
        else if fromDay == "Gold"
        {
            setGoldDay()
        }
        
        TextField.layer.borderWidth = 1.5
        TextField.layer.borderColor = UIColor(red: (160/255.0), green: (160/255.0), blue: (160/255.0), alpha: 1.0).cgColor
        //Rounded Corners
        TextField.layer.cornerRadius = 10
        TextField.layer.masksToBounds = true
        
    }

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
    
// Function that allows Date Picker to work
    @IBAction func dueDateSelected(_ sender: Any)
    {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        dueDate = dateFormatter.string(from: datePicker.date)
    }

// This function will set the necessary labels required when the view is booted
    override func viewWillAppear(_ animated: Bool)
    {
        TitleLabel.text = "Add \(classTitleLabel) Homework"
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
    
// General Setup to make the view look good on multiple platforms
    func generalSetup()
    {
        TextField.sizeToFit()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return true
    }
}
