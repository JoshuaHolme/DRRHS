//
//  DirectoryDetailVC.swift
//  DRRHS
//
//  Created by Joshua Holme on 8/28/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class DirectoryDetailVC: UIViewController
{
    var name = ""
    var email = ""
//    var roomNumber = ""
    var website = ""
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var seperatorOne: UIView!
    @IBOutlet weak var seperatorTwo: UIView!
    @IBOutlet weak var seperatorThree: UIView!
    @IBOutlet weak var EmailLabel: UITextView!

    
//    @IBOutlet weak var RoomNumberLabel: UILabel!
    
    @IBOutlet weak var WebsiteLabel: UITextView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        seperatorOne.backgroundColor = .DRGreen
        seperatorTwo.backgroundColor = .DRGreen
        seperatorThree.backgroundColor = .DRGreen
        NameLabel.text = name
        NameLabel.sizeToFit()
        EmailLabel.text = email
        EmailLabel.sizeToFit()
//        RoomNumberLabel.text = roomNumber
//        RoomNumberLabel.sizeToFit()
        WebsiteLabel.text = website
        //adjustUITextViewHeight(arg: WebsiteLabel)
        
        
    }
    
    func adjustUITextViewHeight(arg : UITextView)
    {
        arg.translatesAutoresizingMaskIntoConstraints = true
        arg.sizeToFit()
        arg.isScrollEnabled = false
    }
}

