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

class GrViewHWViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GRHWVIEWUnwind", sender: self)
    }
    //outlet to the tableviewCell
    @IBOutlet weak var homeworkTableViewCell: UITableView!
    
    //Function to get number of rows in TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return GreenDayHomework.count
    }
    
    //Function to reference our tableviewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GrHWCell") as! GrViewHWTableViewCell
       
        let task = GreenDayHomework[indexPath.row]
        
        cell.HomeworkTextField.text = task.homework!
        cell.DueDateLabel.text = task.dueDate!
        cell.ClassNameLabel.text = task.classTitle!
        
        return cell
    }
    
    func getData() {
     let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
        GreenDayHomework = try context.fetch(GreenDaySchedule.fetchRequest())
        }
        catch {
            print ("fetching Failed")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //get the data from core data
        getData()
        
        //reload data
        homeworkTableViewCell.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        homeworkTableViewCell.reloadData()
    }
    
   func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
    if editingStyle == .delete {
        let task = GreenDayHomework[indexPath.row]
        context.delete(task)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        do {
            GreenDayHomework = try context.fetch(GreenDaySchedule.fetchRequest())
        }
        catch {
            print ("fetching Failed")
        }
        homeworkTableViewCell.reloadData()
    }
 
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
