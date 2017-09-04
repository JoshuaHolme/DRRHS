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
    
    @IBOutlet weak var EmailLabel: UITextView!
    
    @IBOutlet weak var RoomNumberLabel: UILabel!
    
    @IBOutlet weak var WebsiteLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameLabel.text = name
        NameLabel.sizeToFit()
        EmailLabel.text = email
        EmailLabel.sizeToFit()
        RoomNumberLabel.text = roomNumber
        RoomNumberLabel.sizeToFit()
        WebsiteLabel.text = website
        WebsiteLabel.sizeToFit()
        
    }
    
}

