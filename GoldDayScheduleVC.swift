//
//  GoldDayScheduleVC.swift
//  DRRHS
//
//  Created by Sam DuBois and Joshua Holme on 8/3/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

class GoldDayScheduleVC: UIViewController
{
    // MARK: - Variables
    let fromDay = "Gold"
    var classTitleLabel = ""
    var identity: identity.RawValue?
    
    // MARK: - IBOutlets
    
    // Block 1
    @IBOutlet weak var B1ClassLabel: UILabel!
    @IBOutlet weak var B1TeacherLabel: UILabel!
//    @IBOutlet weak var B1RoomLabel: UILabel!
    
    // Block 2
    @IBOutlet weak var B2ClassLabel: UILabel!
    @IBOutlet weak var B2TeacherLabel: UILabel!
//    @IBOutlet weak var B2RoomLabel: UILabel!
    
    // Block 3
    @IBOutlet weak var B3ClassLabel: UILabel!
    @IBOutlet weak var B3TeacherLabel: UILabel!
//    @IBOutlet weak var B3RoomLabel: UILabel!
    
    // Block 4
    @IBOutlet weak var B4ClassLabel: UILabel!
    @IBOutlet weak var B4TeacherLabel: UILabel!
//    @IBOutlet weak var B4RoomLabel: UILabel!
    
    // MARK: - Functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        setUpSchedule()
    }
    
    func setUpSchedule()
    {
        // Block 1
        B1ClassLabel.text = userDataServices.instance.GoB1ClassName
//        B1RoomLabel.text = userDataServices.instance.GoB1RoomNumber
        
        if let teacherNameArray = userDataServices.instance.GoB1Teacher?.components(separatedBy: ",") {
            B1TeacherLabel.text = teacherNameArray[0]
        }
        
        // Block 2
        B2ClassLabel.text = userDataServices.instance.GoB2ClassName
//        B2RoomLabel.text = userDataServices.instance.GoB2RoomNumber
        
        if let teacherNameArray = userDataServices.instance.GoB2Teacher?.components(separatedBy: ",") {
            B1TeacherLabel.text = teacherNameArray[0]
        }
        
        // Block 3
        B3ClassLabel.text = userDataServices.instance.GoB3ClassName
//        B3RoomLabel.text = userDataServices.instance.GoB3RoomNumber
        
        if let teacherNameArray = userDataServices.instance.GoB3Teacher?.components(separatedBy: ",") {
            B1TeacherLabel.text = teacherNameArray[0]
        }
        
        // Block 4
        B4ClassLabel.text = userDataServices.instance.GoB4ClassName
//        B4RoomLabel.text = userDataServices.instance.GoB4RoomNumber
        
        if let teacherNameArray = userDataServices.instance.GoB3Teacher?.components(separatedBy: ",") {
            B1TeacherLabel.text = teacherNameArray[0]
        }
    }
    
    func addAlert()
    {
        let alert = UIAlertController(title: "Uh Oh!", message: "You must add a class to this period in order to add homework.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == TO_ADD_HOMEWORK
        {
            let vc = segue.destination as! AddHomeworkVC
            vc.fromDay = fromDay
            vc.classTitleLabel = classTitleLabel
            vc.identity = identity!
            
        }
    }
    
    // MARK: - IBActions
    @IBAction func B1AddButtonPressed(_ sender: Any)
    {
        if userDataServices.instance.GoB1ClassName != nil
        {
            classTitleLabel = userDataServices.instance.GoB1ClassName!
            identity = GOB1
            self.performSegue(withIdentifier: TO_ADD_HOMEWORK, sender: self)
        }
        else
        {
            addAlert()
        }
    }
    
    @IBAction func B2AddButtonPressed(_ sender: Any)
    {
        if userDataServices.instance.GoB2ClassName != nil
        {
            classTitleLabel = userDataServices.instance.GoB2ClassName!
            identity = GOB2
            self.performSegue(withIdentifier: TO_ADD_HOMEWORK, sender: self)
        }
        else
        {
            addAlert()
        }
    }
    
    @IBAction func B3AddButtonPressed(_ sender: Any)
    {
        if userDataServices.instance.GoB3ClassName != nil
        {
            classTitleLabel = userDataServices.instance.GoB3ClassName!
            identity = GOB3
            self.performSegue(withIdentifier: TO_ADD_HOMEWORK, sender: self)
        }
        else
        {
            addAlert()
        }
    }
    
    @IBAction func B4AddButtonPressed(_ sender: Any)
    {
        if userDataServices.instance.GoB4ClassName != nil
        {
            classTitleLabel = userDataServices.instance.GoB4ClassName!
            identity = GOB4
            self.performSegue(withIdentifier: TO_ADD_HOMEWORK, sender: self)
        }
        else
        {
            addAlert()
        }
    }
    @IBAction func viewHomeworkBtn(_ sender: Any)
    {
        performSegue(withIdentifier: TO_VIEW_HOMEWORK, sender: nil)
    }
}
