//
//  BaseTabBarController.swift
//  DRRHS
//
//  Created by Joshua Holme on 7/28/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//
//  This Class allows us to change the default opening tab

import UIKit

var baseTabBarNumber: Int = 1

class BaseTabBarController: UITabBarController
{
    
    //Create a variable to choose the array position of the tab you want to load
    @IBInspectable var defaultIndex: Int = baseTabBarNumber
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        //Set the starting index to the variable we created
        selectedIndex = defaultIndex
        
    }
    
}
