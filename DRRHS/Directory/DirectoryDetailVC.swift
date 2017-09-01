//
//  DirectoryDetailVC.swift
//  DRRHS
//
//  Created by Joshua Holme on 8/28/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class DirectoryDetailVC: UIViewController{
    
   
    
    var name = ""
    var email = ""
    var roomNumber = ""
    var website = ""
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var RoomNumberLabel: UILabel!
    @IBOutlet weak var WebsiteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameLabel.text = name
        EmailLabel.text = email
        RoomNumberLabel.text = roomNumber
        WebsiteLabel.text = website
        
    }
    
}

