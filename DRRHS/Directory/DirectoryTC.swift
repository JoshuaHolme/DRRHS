//
//  DirectoryTC.swift
//  DRRHS
//
//  Created by Joshua Holme on 8/27/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class DirectoryTC: UITableViewController, UISearchResultsUpdating
{

    // Arrays for the list of teachers
    var filteredTeachers = [Teacher]()
    var selectedTeacher = Teacher(name: "", email: "", roomNumber: "", website: "")
    
    // Set up for Search Bar
    var searchController: UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setUpSearchBar()
    }
    
    func setUpSearchBar()
    {
        searchController = UISearchController(searchResultsController: resultsController)
        searchController.searchBar.sizeToFit()
        searchController.searchResultsUpdater = self
        resultsController.tableView.dataSource = self
        resultsController.tableView.delegate = self
        
        definesPresentationContext = true
        
        if #available(iOS 11.0, *)
        {
            // For iOS 11 and later, we place the search bar in the navigation bar.
            navigationController?.navigationBar.prefersLargeTitles = false
            
            navigationItem.searchController = searchController
            
            // We want the search bar visible all the time.
            navigationItem.hidesSearchBarWhenScrolling = false
            
            // Set Search Bar background to white
            if let textfield = searchController.searchBar.value(forKey: "searchField") as? UITextField
            {
                textfield.textColor = .DRGreen
                if let backgroundview = textfield.subviews.first
                {
                    // Background color
                    backgroundview.backgroundColor = UIColor.white
                    
                    // Rounded corner
                    backgroundview.layer.cornerRadius = 10;
                    backgroundview.clipsToBounds = true;
                }
            }
        }
        else
        {
            // For iOS 10 and earlier, we place the search bar in the table view's header.
            tableView.tableHeaderView = searchController.searchBar
            
            //Make Search Background Green
            tableView.backgroundView = UIView()
            tableView.backgroundView?.backgroundColor = .DRGreen
            
            //Remove Navigation Bar Border
            self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
            self.navigationController?.navigationBar.shadowImage = UIImage()
        }
        
        //Add in the DR Logo on top Bar
        addNavBarImage()
    }
    
    func updateSearchResults(for searchController: UISearchController)
    {
        self.filteredTeachers = TEACHER_LIST.filter{ (teacher: Teacher) -> Bool in
            
            if teacher.name.lowercased().contains(self.searchController.searchBar.text!.lowercased())
            {
                return true
            }else
            {
                return false
            }
        }
        
        self.resultsController.tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        if tableView == self.tableView
        {
            return TEACHER_LIST.count
        }
        else
        {
            return self.filteredTeachers.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        
        let teacher : Teacher
        
        if tableView == self.tableView
        {
            teacher = TEACHER_LIST[indexPath.row]
        }
        else
        {
            teacher = filteredTeachers[indexPath.row]
        }
        
        cell.textLabel?.text = teacher.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let teacher: Teacher
        
        if tableView == self.tableView
        {
            teacher = TEACHER_LIST[indexPath.row]
            selectedTeacher = teacher
        }
        else
        {
            teacher = filteredTeachers[indexPath.row]
            selectedTeacher = teacher
        }
        
        self.performSegue(withIdentifier: "teacherDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let vc = segue.destination as? DirectoryDetailVC
        
        vc?.name = selectedTeacher.name
        vc?.email = selectedTeacher.email
        vc?.roomNumber = selectedTeacher.roomNumber
        vc?.website = selectedTeacher.website
    }
    
    func addNavBarImage()
    {
        let navBarController = navigationController!
        
        let image = #imageLiteral(resourceName: "DRNavigationBarLogo")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navBarController.navigationBar.frame.size.width
        let bannerHeight = navBarController.navigationBar.frame.size.height
        
        let  bannerX = bannerWidth / 2 - image.size.width / 2
        let bannerY = bannerHeight / 2 - image.size.height / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
    }
}

