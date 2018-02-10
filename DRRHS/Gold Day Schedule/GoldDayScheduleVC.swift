//
//  GoldDayScheduleVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/3/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

//Block 1 Global Variables
var GoB1ClassLabelField = String()
var GoB1TeacherLabelField = String()
var GoB1RoomLabelField = String()

//Block 2 Global Variables
var GoB2ClassLabelField = String()
var GoB2TeacherLabelField = String()
var GoB2RoomLabelField = String()

//Block 3 Global Variables
var GoB3ClassLabelField = String()
var GoB3TeacherLabelField = String()
var GoB3RoomLabelField = String()

//Block 4 Global Variables
var GoB4ClassLabelField = String()
var GoB4TeacherLabelField = String()
var GoB4RoomLabelField = String()

class GoldDayScheduleVC: UIViewController {
    
    //View Outlets that setup the look of the View Controller
    @IBOutlet weak var blockOne: UIView!
    @IBOutlet weak var blockTwo: UIView!
    @IBOutlet weak var blockThree: UIView!
    @IBOutlet weak var blockFour: UIView!
    @IBOutlet weak var homeworkButtonPressed: UIButton!
    @IBOutlet weak var B1AddView: UIView!
    @IBOutlet weak var B2AddView: UIButton!
    @IBOutlet weak var B3AddView: UIButton!
    @IBOutlet weak var B4AddView: UIButton!
    
    
    
    //Block 1 IB Outlet Lables
    @IBOutlet weak var B1ClassLabel: UILabel!
    @IBOutlet weak var B1TeacherLabel: UILabel!
    @IBOutlet weak var B1RoomLabel: UILabel!
    
    //Block 2 Outlet Labels
    @IBOutlet weak var B2ClassLabel: UILabel!
    @IBOutlet weak var B2TeacherLabel: UILabel!
    @IBOutlet weak var B2RoomLabel: UILabel!
    
    //Block 3 Save Button
    @IBOutlet weak var B3ClassLabel: UILabel!
    @IBOutlet weak var B3TeacherLabel: UILabel!
    @IBOutlet weak var B3RoomLabel: UILabel!
    
    //Block 4 Save Button
    @IBOutlet weak var B4ClassLabel: UILabel!
    @IBOutlet weak var B4TeacherLabel: UILabel!
    @IBOutlet weak var B4RoomLabel: UILabel!
    
    @IBAction func B1AddButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GoB1addHW", sender: self)
        
        GohomeworkTitleLabel = GoB1ClassLabelField
    }
    
    @IBAction func B2AddButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GoB2addHW", sender: self)
        GohomeworkTitleLabel = GoB2ClassLabelField
    }
    
    @IBAction func B3AddButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GoB3addHW", sender: self)
        GohomeworkTitleLabel = GoB3ClassLabelField
    }
    
    @IBAction func B4AddButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GoB4addHW", sender: self)
        GohomeworkTitleLabel = GoB4ClassLabelField
    }
    
    @IBAction func GOHW(_ sender: UIStoryboardSegue){
        if sender.source is GoAddHWViewController {
            
            
            
        }
    }
    @IBAction func GOHWVIEW(_ sender: UIStoryboardSegue){
        if sender.source is GoAddHWViewController {
            
        }
    }
    
    //VIEW DID LOAD!!!!!!!!!!!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Block 1
        //Aestetics and Design Elements
        blockOne.layer.borderWidth = 2
        blockOne.layer.borderColor = UIColor.black.cgColor
        blockOne.layer.cornerRadius = 20
        blockOne.layer.masksToBounds = true
        
        //The Core Data to Save all of the Info
        let B1ClassroomLabelDefault = UserDefaults.standard
        if (B1ClassroomLabelDefault.value(forKey: "GoB1ClassroomLabel") != nil){
            GoB1ClassLabelSaved = (B1ClassroomLabelDefault.value(forKey: "GoB1ClassroomLabel") as! NSString) as String
            GoB1ClassLabelField = GoB1ClassLabelSaved
        }
        let B1TeacherLabelDefault = UserDefaults.standard
        if (B1TeacherLabelDefault.value(forKey: "GoB1TeacherLabel") != nil){
            GoB1TeacherLabelSaved = (B1TeacherLabelDefault.value(forKey: "GoB1TeacherLabel") as! NSString) as String
            GoB1TeacherLabelField = GoB1TeacherLabelSaved
        }
        let B1RoomLabelDefault = UserDefaults.standard
        if (B1RoomLabelDefault.value(forKey: "GoB1RoomLabel") != nil){
            GoB1RoomLabelSaved = (B1RoomLabelDefault.value(forKey: "GoB1RoomLabel") as! NSString) as String
            GoB1RoomLabelField = GoB1RoomLabelSaved
        }
        
        //Block 2
        //Aestetics and Design Elements
        blockTwo.layer.borderWidth = 2
        blockTwo.layer.borderColor = UIColor.black.cgColor
        blockTwo.layer.cornerRadius = 20
        blockTwo.layer.masksToBounds = true
        
        //The Core Data to Save all of the Info
        
        //Classroom Core Data
        let B2ClassroomLabelDefault = UserDefaults.standard
        if (B2ClassroomLabelDefault.value(forKey: "GoB2ClassroomLabel") != nil){
            GoB2ClassLabelSaved = (B2ClassroomLabelDefault.value(forKey: "GoB2ClassroomLabel") as! NSString) as String
            GoB2ClassLabelField = GoB2ClassLabelSaved
        }
        
        //Teacher Core Data
        let B2TeacherLabelDefault = UserDefaults.standard
        if (B2TeacherLabelDefault.value(forKey: "GoB2TeacherLabel") != nil){
            GoB2TeacherLabelSaved = (B2TeacherLabelDefault.value(forKey: "GoB2TeacherLabel") as! NSString) as String
            GoB2TeacherLabelField = GoB2TeacherLabelSaved
        }
        
        //Room Core Data
        let B2RoomLabelDefault = UserDefaults.standard
        if (B2RoomLabelDefault.value(forKey: "GoB2RoomLabel") != nil){
            GoB2RoomLabelSaved = (B2RoomLabelDefault.value(forKey: "GoB2RoomLabel") as! NSString) as String
            GoB2RoomLabelField = GoB2RoomLabelSaved
        }
        //Block 3
        //Aestetics and Design Elements
        blockThree.layer.borderWidth = 2
        blockThree.layer.borderColor = UIColor.black.cgColor
        //Round Corners
        blockThree.layer.cornerRadius = 20
        blockThree.layer.masksToBounds = true
        
        //Classroom Core Data
        let B3ClassroomLabelDefault = UserDefaults.standard
        if (B3ClassroomLabelDefault.value(forKey: "GoB3ClassroomLabel") != nil){
            GoB3ClassLabelSaved = (B3ClassroomLabelDefault.value(forKey: "GoB3ClassroomLabel") as! NSString) as String
            GoB3ClassLabelField = GoB3ClassLabelSaved
        }
        
        //Teacher Core Data
        let B3TeacherLabelDefault = UserDefaults.standard
        if (B3TeacherLabelDefault.value(forKey: "GoB3TeacherLabel") != nil){
            GoB3TeacherLabelSaved = (B3TeacherLabelDefault.value(forKey: "GoB3TeacherLabel") as! NSString) as String
            GoB3TeacherLabelField = GoB3TeacherLabelSaved
        }
        
        //Room Core Data
        let B3RoomLabelDefault = UserDefaults.standard
        if (B3RoomLabelDefault.value(forKey: "GoB3RoomLabel") != nil){
            GoB3RoomLabelSaved = (B3RoomLabelDefault.value(forKey: "GoB3RoomLabel") as! NSString) as String
            GoB3RoomLabelField = GoB3RoomLabelSaved
        }
        
        
        //Block 4
        //Aestetics and Design Elements
        blockFour.layer.borderWidth = 2
        blockFour.layer.borderColor = UIColor.black.cgColor
        //Round Corners
        blockFour.layer.cornerRadius = 20
        blockFour.layer.masksToBounds = true
        
        //Classroom Core Data:
        let B4ClassroomLabelDefault = UserDefaults.standard
        if (B4ClassroomLabelDefault.value(forKey: "GoB4ClassroomLabel") != nil){
            GoB4ClassLabelSaved = (B4ClassroomLabelDefault.value(forKey: "GoB4ClassroomLabel") as! NSString) as String
            GoB4ClassLabelField = GoB4ClassLabelSaved
        }
        
        //Teacher Core Data:
        let B4TeacherLabelDefault = UserDefaults.standard
        if (B4TeacherLabelDefault.value(forKey: "GoB4TeacherLabel") != nil){
            GoB4TeacherLabelSaved = (B4TeacherLabelDefault.value(forKey: "GoB4TeacherLabel") as! NSString) as String
            GoB4TeacherLabelField = GoB4TeacherLabelSaved
        }
        
        //Room Core Data:
        let B4RoomLabelDefault = UserDefaults.standard
        if (B4RoomLabelDefault.value(forKey: "GoB4RoomLabel") != nil){
            GoB4RoomLabelSaved = (B4RoomLabelDefault.value(forKey: "GoB4RoomLabel") as! NSString) as String
            GoB4RoomLabelField = GoB4RoomLabelSaved
        }
        
        //Homework Button
        //Homework Button Label is autosized to fit different iPhones
        homeworkButtonPressed.titleLabel?.minimumScaleFactor = 0.2
        homeworkButtonPressed.titleLabel?.adjustsFontSizeToFitWidth = true
        
    }
    //Refreshes Labels so it will be updated
    override func viewWillAppear(_ animated: Bool) {
        
        //Block 1
        B1ClassLabel.text = GoB1ClassLabelField
        B1TeacherLabel.text = GoB1TeacherLabelField
        B1RoomLabel.text = GoB1RoomLabelField
        
        //Block 2
        B2ClassLabel.text = GoB2ClassLabelField
        B2TeacherLabel.text = GoB2TeacherLabelField
        B2RoomLabel.text = GoB2RoomLabelField
        
        //Block 3
        B3ClassLabel.text = GoB3ClassLabelField
        B3TeacherLabel.text = GoB3TeacherLabelField
        B3RoomLabel.text = GoB3RoomLabelField
        
        //Block 4
        B4ClassLabel.text = GoB4ClassLabelField
        B4TeacherLabel.text = GoB4TeacherLabelField
        B4RoomLabel.text = GoB4RoomLabelField
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

