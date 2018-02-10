//
//  GreenDayScheduleVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/3/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

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
        NotificationCenter.default.addObserver(self, selector: #selector(GreenDayScheduleVC.userDataDidChange(_:)), name: USER_DATA_HAS_CHANGED, object: nil)
        
        // Homework Button Label is autosized to fit different iPhones
        homeworkButtonPressed.titleLabel?.minimumScaleFactor = 0.2
        homeworkButtonPressed.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    @objc func userDataDidChange(_ notif: Notification) {
        setUpSchedule()
    }
    
    // MARK: - View Did Load
    override func viewWillAppear(_ animated: Bool){
        setUpSchedule()
    }

    // Explain what the different actions do
    @IBAction func B1AddButtonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "GrB1addH", sender: self)
        GrhomeworkTitleLabel = userDataServices.instance.GrB1ClassName!
    }
    
    @IBAction func B2AddButtonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "GrB2addH", sender: self)
        GrhomeworkTitleLabel = userDataServices.instance.GrB2ClassName!
    }
    
    @IBAction func B3AddButtonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "GrB3addH", sender: self)
        GrhomeworkTitleLabel = userDataServices.instance.GrB3ClassName!
    }
    
    @IBAction func B4AddButtonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "GrB4addH", sender: self)
        GrhomeworkTitleLabel = userDataServices.instance.GrB4ClassName!
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
    func setUpSchedule() {
        // Block 1
        B1ClassLabel.text = userDataServices.instance.GrB1ClassName
        B1TeacherLabel.text = userDataServices.instance.GrB1Teacher
        B1RoomLabel.text = userDataServices.instance.GrB1RoomNumber
        
        // Block 2
        B2ClassLabel.text = userDataServices.instance.GrB2ClassName
        B2TeacherLabel.text = userDataServices.instance.GrB2Teacher
        B2RoomLabel.text = userDataServices.instance.GrB2RoomNumber
        
        // Block 3
        B3ClassLabel.text = userDataServices.instance.GrB3ClassName
        B3TeacherLabel.text = userDataServices.instance.GrB3Teacher
        B3RoomLabel.text = userDataServices.instance.GrB3RoomNumber
        
        // Block 4
        B4ClassLabel.text = userDataServices.instance.GrB4ClassName
        B4TeacherLabel.text = userDataServices.instance.GrB4Teacher
        B4RoomLabel.text = userDataServices.instance.GrB4RoomNumber
    }
}
