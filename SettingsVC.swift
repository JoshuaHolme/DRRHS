//
//  SettingsVC.swift
//  DRRHS
//
//  Created by Joshua Holme on 2/11/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    var selectedDay: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == TO_EDIT_SCHEDULE
        {
            let vc = segue.destination as! EditScheduleVC
            vc.day = selectedDay
        }
    }

    // MARK: - IBActions
    @IBAction func editGreenDayBtnPressed(_ sender: Any)
    {
        selectedDay = "Green"
        performSegue(withIdentifier: TO_EDIT_SCHEDULE, sender: nil)
    }
    
    @IBAction func editGoldDayBtnPressed(_ sender: Any)
    {
        selectedDay = "Gold"
        performSegue(withIdentifier: TO_EDIT_SCHEDULE, sender: nil)
    }
    

}
