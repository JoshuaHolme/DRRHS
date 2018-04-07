//
//  GrViewHomeworkViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/17/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit
import CoreData

//Homework Array to store information of Core Data
var GreenDayHomework:[Schedule] = []

class ViewHomeworkVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    // MARK: - Outlets
    @IBOutlet weak var homeworkTV: UITableView!
    
    // MARK: - Variables
    var dueDate: String?
    var classTitle: String?
    var homework: String?
    var arcLength: Double?
    var arcColor: UIColor?
    var teacherName: String?
    var identity: String?
    var image: UIImage?
    var day: String?
    
    // MARK: - Functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        homeworkTV.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        //get the data from core data
        getData()
        
        //reload data
        homeworkTV.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        homeworkTV.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return GreenDayHomework.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let nib = UINib(nibName: "HomeworkCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "HomeworkCell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeworkCell") as! ViewHomeworkTVCell
       
        let task = GreenDayHomework[indexPath.row]
        Functions.instance.setTime(DueDate: task.dueDate!)
        let arcLength = Functions.instance.calculateArcLength()
        let arcColor = Functions.instance.setColor()
        
        cell.classNameLbl.text = task.classTitle
        cell.dueDateLbl.text = task.dueDate
        cell.descriptionTxtView.text = task.homework
        cell.CircleGraph.arcColor = arcColor
        cell.CircleGraph.endArc = CGFloat(arcLength)
        cell.CircleGraph.arcWidth = 7
        cell.CircleGraph.arcBackgroundColor = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1)
        

        if task.classColor == "Green"
        {
            cell.dayIndicator.backgroundColor = .DRGreen
            cell.pictureLabel.textColor = .DRGreen
        }
        else if task.classColor == "Gold"
        {
            cell.dayIndicator.backgroundColor = .DRGold
            cell.pictureLabel.textColor = .DRGold
        }
        
        if task.picture != nil {
            cell.pictureLabel.isHidden = false
            cell.descriptionTxtView.isHidden = true
        }
        
        return cell
    }
    
    func getData()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do
        {
            GreenDayHomework = try context.fetch(Schedule.fetchRequest())
        }
        catch
        {
            print ("fetching Failed")
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        if editingStyle == .delete
        {
            let task = GreenDayHomework[indexPath.row]
            context.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do
            {
                GreenDayHomework = try context.fetch(Schedule.fetchRequest())
            }
            catch
            {
                print ("fetching Failed")
            }
            
            homeworkTV.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        homeworkTV.deselectRow(at: indexPath, animated: false)
        let task = GreenDayHomework[indexPath.row]
        Functions.instance.setTime(DueDate: task.dueDate!)
        arcLength = Functions.instance.calculateArcLength()
        arcColor = Functions.instance.setColor()
        
        identity = task.identityCode
        classTitle = task.classTitle!
        dueDate = task.dueDate!
        homework = task.homework!
        
        if task.classColor == "Green"
        {
            day = "Green"
        }
        else if task.classColor == "Gold"
        {
            day = "Gold"
        }
        
        if let imageData = task.picture {
            image = UIImage(data: imageData)
        } else {
            image = nil
        }
        
        performSegue(withIdentifier: TO_VIEW_HOMEWORK_DETAILED, sender: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewHomeworkDetailVC
        vc?.classTitleField = classTitle
        vc?.dueDateField = dueDate
        vc?.homeworkField = homework
        vc?.teacherNameField = "No Teacher Given"
        vc?.arcLength = arcLength
        vc?.arcColor = arcColor
        vc?.day = day
        vc?.image = image
        vc?.identity = identity
    }
    
    // MARK: - Actions
    @IBAction func closeBtnPressed(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
}
