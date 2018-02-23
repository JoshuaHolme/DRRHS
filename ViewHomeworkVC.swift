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
var GreenDayHomework:[GreenDaySchedule] = []

class ViewHomeworkVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    // MARK: - Outlets
    @IBOutlet weak var homeworkTV: UITableView!
    
    // MARK: - Funcitons
    override func viewDidLoad()
    {
        super.viewDidLoad()
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
        
        cell.classNameLbl.text = task.classTitle
        cell.dueDateLbl.text = task.dueDate
        cell.descriptionTxtView.text = task.homework
        
        if task.classColor == "Green"
        {
            cell.dayIndicator.backgroundColor = .DRGreen
        }
        else if task.classColor == "Gold"
        {
            cell.dayIndicator.backgroundColor = .DRGold
        }
        
        return cell
    }
    
    func getData()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do
        {
            GreenDayHomework = try context.fetch(GreenDaySchedule.fetchRequest())
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
                GreenDayHomework = try context.fetch(GreenDaySchedule.fetchRequest())
            }
            catch
            {
                print ("fetching Failed")
            }
            
            homeworkTV.reloadData()
        }
        
    }
    
    // MARK: - Actions
    @IBAction func closeBtnPressed(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
}
