//
//  GreenDayScheduleVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/3/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

// MARK: - Global Variables
// We need to explain what these variables do here and why they are global

// Block 1
var GrB1ClassLabelField = String()
var GrB1TeacherLabelField = String()
var GrB1RoomLabelField = String()

// Block 2
var GrB2ClassLabelField = String()
var GrB2TeacherLabelField = String()
var GrB2RoomLabelField = String()

// Block 3
var GrB3ClassLabelField = String()
var GrB3TeacherLabelField = String()
var GrB3RoomLabelField = String()

// Block 4
var GrB4ClassLabelField = String()
var GrB4TeacherLabelField = String()
var GrB4RoomLabelField = String()

class GreenDayScheduleVC: UIViewController
{
    // MARK: - IBOutlets
    
    // View Outlets that setup the look of the View Controller
    // Why is blockOne of type ClassView but the rest are UIViews?
    // Split these up and organize them with the blocks themselves
    // Fix the add button outlets
    @IBOutlet weak var blockOne: ClassView!
    @IBOutlet weak var blockTwo: UIView!
    @IBOutlet weak var blockThree: UIView!
    @IBOutlet weak var blockFour: UIView!
    @IBOutlet weak var homeworkButton: UIView!
    @IBOutlet weak var homeworkButtonPressed: UIButton!
    @IBOutlet weak var B1AddView: UIView!
    @IBOutlet weak var B2AddView: UIButton!
    @IBOutlet weak var B3AddView: UIButton!
    @IBOutlet weak var B4AddView: UIButton!
    
    // Block 1 IBOutlets
    @IBOutlet weak var B1ClassLabel: UILabel!
    @IBOutlet weak var B1TeacherLabel: UILabel!
    @IBOutlet weak var B1RoomLabel: UILabel!
    
    // Block 2 Outlet Labels
    @IBOutlet weak var B2ClassLabel: UILabel!
    @IBOutlet weak var B2TeacherLabel: UILabel!
    @IBOutlet weak var B2RoomLabel: UILabel!

    // Block 3 Save Button
    @IBOutlet weak var B3ClassLabel: UILabel!
    @IBOutlet weak var B3TeacherLabel: UILabel!
    @IBOutlet weak var B3RoomLabel: UILabel!
    
    // Block 4 Save Button
    @IBOutlet weak var B4ClassLabel: UILabel!
    @IBOutlet weak var B4TeacherLabel: UILabel!
    @IBOutlet weak var B4RoomLabel: UILabel!
    
    // MARK: - View Did Load
    override func viewDidLoad()
    {
        super.viewDidLoad()

// Block 1
// Explain the code
        
        // The Core Data to Save all of the Info
        let B1ClassroomLabelDefault = UserDefaults.standard
        
        if (B1ClassroomLabelDefault.value(forKey: "B1ClassroomLabel") != nil)
        {
            GrB1ClassLabelSaved = (B1ClassroomLabelDefault.value(forKey: "B1ClassroomLabel") as! NSString) as String
            GrB1ClassLabelField = GrB1ClassLabelSaved
        }
        
        let B1TeacherLabelDefault = UserDefaults.standard
        
        if (B1TeacherLabelDefault.value(forKey: "B1TeacherLabel") != nil)
        {
            GrB1TeacherLabelSaved = (B1TeacherLabelDefault.value(forKey: "B1TeacherLabel") as! NSString) as String
            GrB1TeacherLabelField = GrB1TeacherLabelSaved
        }
        
        let B1RoomLabelDefault = UserDefaults.standard
        
        if (B1RoomLabelDefault.value(forKey: "B1RoomLabel") != nil)
        {
            GrB1RoomLabelSaved = (B1RoomLabelDefault.value(forKey: "B1RoomLabel") as! NSString) as String
             GrB1RoomLabelField = GrB1RoomLabelSaved
        }
 
// Block 2
// Explain the code
        
        // The Core Data to Save all of the Info
        
        // Classroom Core Data
        let B2ClassroomLabelDefault = UserDefaults.standard
        if (B2ClassroomLabelDefault.value(forKey: "B2ClassroomLabel") != nil){
            GrB2ClassLabelSaved = (B2ClassroomLabelDefault.value(forKey: "B2ClassroomLabel") as! NSString) as String
            GrB2ClassLabelField = GrB2ClassLabelSaved
        }
        
        // Teacher Core Data
        let B2TeacherLabelDefault = UserDefaults.standard
        if (B2TeacherLabelDefault.value(forKey: "B2TeacherLabel") != nil){
            GrB2TeacherLabelSaved = (B2TeacherLabelDefault.value(forKey: "B2TeacherLabel") as! NSString) as String
            GrB2TeacherLabelField = GrB2TeacherLabelSaved
        }
        
        // Room Core Data
        let B2RoomLabelDefault = UserDefaults.standard
        if (B2RoomLabelDefault.value(forKey: "B2RoomLabel") != nil){
            GrB2RoomLabelSaved = (B2RoomLabelDefault.value(forKey: "B2RoomLabel") as! NSString) as String
            GrB2RoomLabelField = GrB2RoomLabelSaved
        }
// Block 3
// Explain the code
        
        // Classroom Core Data
        let B3ClassroomLabelDefault = UserDefaults.standard
        if (B3ClassroomLabelDefault.value(forKey: "B3ClassroomLabel") != nil){
            GrB3ClassLabelSaved = (B3ClassroomLabelDefault.value(forKey: "B3ClassroomLabel") as! NSString) as String
            GrB3ClassLabelField = GrB3ClassLabelSaved
        }
        
        // Teacher Core Data
        let B3TeacherLabelDefault = UserDefaults.standard
        if (B3TeacherLabelDefault.value(forKey: "B3TeacherLabel") != nil){
            GrB3TeacherLabelSaved = (B3TeacherLabelDefault.value(forKey: "B3TeacherLabel") as! NSString) as String
            GrB3TeacherLabelField = GrB3TeacherLabelSaved
        }
        
        // Room Core Data
        let B3RoomLabelDefault = UserDefaults.standard
        if (B3RoomLabelDefault.value(forKey: "B3RoomLabel") != nil){
            GrB3RoomLabelSaved = (B3RoomLabelDefault.value(forKey: "B3RoomLabel") as! NSString) as String
            GrB3RoomLabelField = GrB3RoomLabelSaved
        }
        
        
// Block 4
// Explain the code
        
        // Classroom Core Data:
        let B4ClassroomLabelDefault = UserDefaults.standard
        if (B4ClassroomLabelDefault.value(forKey: "B4ClassroomLabel") != nil){
            GrB4ClassLabelSaved = (B4ClassroomLabelDefault.value(forKey: "B4ClassroomLabel") as! NSString) as String
            GrB4ClassLabelField = GrB4ClassLabelSaved
        }
        
        // Teacher Core Data:
        let B4TeacherLabelDefault = UserDefaults.standard
        if (B4TeacherLabelDefault.value(forKey: "B4TeacherLabel") != nil){
            GrB4TeacherLabelSaved = (B4TeacherLabelDefault.value(forKey: "B4TeacherLabel") as! NSString) as String
            GrB4TeacherLabelField = GrB4TeacherLabelSaved
        }
        
        // Room Core Data:
        let B4RoomLabelDefault = UserDefaults.standard
        if (B4RoomLabelDefault.value(forKey: "B4RoomLabel") != nil){
            GrB4RoomLabelSaved = (B4RoomLabelDefault.value(forKey: "B4RoomLabel") as! NSString) as String
            GrB4RoomLabelField = GrB4RoomLabelSaved
        }
        
// View Homework Button
        
        // Homework Button Label is autosized to fit different iPhones
        homeworkButtonPressed.titleLabel?.minimumScaleFactor = 0.2
        homeworkButtonPressed.titleLabel?.adjustsFontSizeToFitWidth = true
      
    }
    
    // MARK: - View Did Load
    override func viewWillAppear(_ animated: Bool)
    {
        // Refreshes Labels so it will be updated
        
        // Block 1
        B1ClassLabel.text = GrB1ClassLabelField
        B1TeacherLabel.text = GrB1TeacherLabelField
        B1RoomLabel.text = GrB1RoomLabelField
        
        // Block 2
        B2ClassLabel.text = GrB2ClassLabelField
        B2TeacherLabel.text = GrB2TeacherLabelField
        B2RoomLabel.text = GrB2RoomLabelField
        
        // Block 3
        B3ClassLabel.text = GrB3ClassLabelField
        B3TeacherLabel.text = GrB3TeacherLabelField
        B3RoomLabel.text = GrB3RoomLabelField
        
        // Block 4
        B4ClassLabel.text = GrB4ClassLabelField
        B4TeacherLabel.text = GrB4TeacherLabelField
        B4RoomLabel.text = GrB4RoomLabelField
    }
    
    // MARK: - IBActions
    
    // Explain what the different acitons do
    @IBAction func B1AddButtonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "GrB1addH", sender: self)
        GrhomeworkTitleLabel = GrB1ClassLabelField
    }
    
    @IBAction func B2AddButtonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "GrB2addH", sender: self)
        GrhomeworkTitleLabel = GrB2ClassLabelField
    }
    
    @IBAction func B3AddButtonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "GrB3addH", sender: self)
        GrhomeworkTitleLabel = GrB3ClassLabelField
    }
    
    @IBAction func B4AddButtonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "GrB4addH", sender: self)
        GrhomeworkTitleLabel = GrB4ClassLabelField
    }
    
    // Why is this action here?
    @IBAction func GRHW(_ sender: UIStoryboardSegue)
    {
        if sender.source is GrAddHWViewController
        {
            
        }
    }
    
    // Why is this action here?
    @IBAction func GRHWVIEW(_ sender: UIStoryboardSegue)
    {
        if sender.source is GrAddHWViewController
        {
            
        }
    }
}
