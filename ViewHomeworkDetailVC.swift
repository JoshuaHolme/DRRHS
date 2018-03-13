//
//  ViewHomeworkDetailVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 2/23/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class ViewHomeworkDetailVC: UIViewController {

    @IBOutlet weak var classTitle: UILabel!
    @IBOutlet weak var teacherName: UILabel!
    @IBOutlet weak var homework: UILabel!
    @IBOutlet weak var dueDate: UILabel!
    @IBOutlet weak var CircleGraph: CircleGraphView!
    @IBOutlet weak var homeworkLabel: UILabel!
    @IBOutlet weak var DoneButton: RoundedButton!
    @IBOutlet weak var dueDateLbl: UILabel!
    @IBOutlet weak var emailBtn: RoundedButton!
    @IBOutlet weak var websiteBtn: RoundedButton!
    @IBOutlet weak var directoryBtn: RoundedButton!
    
    var classTitleField: String?
    var teacherNameField: String?
    var homeworkField: String?
    var dueDateField: String?
    var arcLength: Double?
    var arcColor: UIColor?
    var day: String?
    
    
    @IBAction func doneBtnSelected(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        classTitle.text = classTitleField
        teacherName.text = teacherNameField
        homework.text = homeworkField
        dueDate.text = dueDateField
        CircleGraph.endArc = CGFloat(arcLength!)
        CircleGraph.arcColor = arcColor!
        CircleGraph.arcBackgroundColor = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1)
        
        if day == "Green" {
            homeworkLabel.textColor = .DRGreen
            DoneButton.backgroundColor = .DRGreen
            dueDateLbl.textColor = .DRGreen
            emailBtn.backgroundColor = .DRGreen
            websiteBtn.backgroundColor = .DRGreen
            directoryBtn.backgroundColor = .DRGreen
            
        } else if day == "Gold" {
            homeworkLabel.textColor = .DRGold
            DoneButton.backgroundColor = .DRGold
            dueDateLbl.textColor = .DRGold
            emailBtn.backgroundColor = .DRGold
            websiteBtn.backgroundColor = .DRGold
            directoryBtn.backgroundColor = .DRGold
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func emailBtnPressed(_ sender: Any) {
    }
    
    @IBAction func websiteBtnPressed(_ sender: Any) {
    }
    
    @IBAction func directoryBtnPressed(_ sender: Any) {
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
