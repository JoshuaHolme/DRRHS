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
    @IBOutlet weak var imageView: UIImageView!
    
    var teacherNameField: String?
    var classTitleField: String?
    var homeworkField: String?
    var dueDateField: String?
    var websiteField: String?
    var emailField: String?
    var arcLength: Double?
    var arcColor: UIColor?
    var identity: identity.RawValue?
    var image: UIImage?
    var day: String?
    
    
    @IBAction func doneBtnSelected(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        classTitle.text = classTitleField
        teacherName.text = teacherNameField
        homework.text = homeworkField
        dueDate.text = dueDateField
        imageView?.image = image
        CircleGraph.endArc = CGFloat(arcLength!)
        CircleGraph.arcColor = arcColor!
        CircleGraph.arcBackgroundColor = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1)
        
        if image != nil {
            imageView.contentMode = .scaleAspectFill
            imageView.layer.masksToBounds = true
            imageView.layer.cornerRadius = 15
            imageView.isHidden = false
            homework.isHidden = true
        }
        
        if day == "Green" {
            homeworkLabel.textColor = .DRGreen
            DoneButton.backgroundColor = .DRGreen
            dueDateLbl.textColor = .DRGreen
            emailBtn.backgroundColor = .DRGreen
            websiteBtn.backgroundColor = .DRGreen
            
        } else if day == "Gold" {
            homeworkLabel.textColor = .DRGold
            DoneButton.backgroundColor = .DRGold
            dueDateLbl.textColor = .DRGold
            emailBtn.backgroundColor = .DRGold
            websiteBtn.backgroundColor = .DRGold
        }
        determineTeacherInfo(identity: identity)
    }
    
    // Function to determine the identity and replace TeacherName Label with the appropriate Name, email, and websites
    func determineTeacherInfo(identity: identity.RawValue!) {
        if identity == GRB1{
            if let teacherArray = userDataServices.instance.GrB1Teacher?.components(separatedBy: ",")
            {
                teacherName.text = teacherArray[0]
                emailField = teacherArray[1]
                websiteField = teacherArray[2]
            }
        }
        else if identity == GRB2 {
            if let teacherArray = userDataServices.instance.GrB2Teacher?.components(separatedBy: ",")
            {
                teacherName.text = teacherArray[0]
                emailField = teacherArray[1]
                websiteField = teacherArray[2]
            }
        }
        else if identity == GRB3 {
            if let teacherArray = userDataServices.instance.GrB3Teacher?.components(separatedBy: ",")
            {
                teacherName.text = teacherArray[0]
                emailField = teacherArray[1]
                websiteField = teacherArray[2]
            }
        }
        else if identity == GRB4 {
            if let teacherArray = userDataServices.instance.GrB4Teacher?.components(separatedBy: ",")
            {
                teacherName.text = teacherArray[0]
                emailField = teacherArray[1]
                websiteField = teacherArray[2]
            }
        }
        else if identity == GOB1 {
            if let teacherArray = userDataServices.instance.GoB1Teacher?.components(separatedBy: ",")
            {
                teacherName.text = teacherArray[0]
                emailField = teacherArray[1]
                websiteField = teacherArray[2]
            }
        }
        else if identity == GOB2 {
            if let teacherArray = userDataServices.instance.GoB2Teacher?.components(separatedBy: ",")
            {
                teacherName.text = teacherArray[0]
                emailField = teacherArray[1]
                websiteField = teacherArray[2]
            }
        }
        else if identity == GOB3 {
            if let teacherArray = userDataServices.instance.GoB3Teacher?.components(separatedBy: ",")
            {
                teacherName.text = teacherArray[0]
                emailField = teacherArray[1]
                websiteField = teacherArray[2]
            }
        }
        else if identity == GOB4 {
            if let teacherArray = userDataServices.instance.GoB4Teacher?.components(separatedBy: ",")
            {
                teacherName.text = teacherArray[0]
                emailField = teacherArray[1]
                websiteField = teacherArray[2]
            }
        }
    }
    
    @IBAction func emailBtnPressed(_ sender: Any) {
        if let url = URL(string: "mailto:\(emailField!)") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    @IBAction func websiteBtnPressed(_ sender: Any) {
        if let url = URL(string: websiteField!) {
            UIApplication.shared.open(url, options: [:])
        } else if websiteField == "There is no wesbite available for this teacher"{
            addAlert()
        } else {
            performSegue(withIdentifier: TO_MULTIPLEWEBSITES, sender: self)
        }
    }
    
    @IBAction func imageButtonPushed(_ sender: Any) {
        if image != nil {
            performSegue(withIdentifier: TO_IMAGE_VC, sender: self)
        }
    }
    
    func addAlert()
    {
        let alert = UIAlertController(title: "Uh Oh!", message: "There is no website currently available for this teacher", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ImageVC {
            vc.image = image
        } else if let vc = segue.destination as? MultipleWebsitesVC {
            vc.websites = websiteField!
        }
    }
}
