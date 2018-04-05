//
//  FirstViewController.swift
//  DRRHS
//
//  Created by Joshua Holme on 7/14/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController
{
    
    // MARK: - IBOutlets
    @IBOutlet weak var greenDay: UIView!
    @IBOutlet weak var goldDay: UIView!
    @IBOutlet weak var button: UISegmentedControl!
    
    
    // MARK: - Functions
    
    override func viewDidLoad()
    {
        
        addNavBarImage()
        getGreenDayData()
    }
    
    func getGreenDayData()
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
    
    // MARK: - IBActions
    
    //function used to switch between the two container views using the segmented controller
    //this also changes the color of the segmented controller as the button is pushed
    @IBAction func segmentedControl(_ sender: Any)
    {
        if (sender as AnyObject).selectedSegmentIndex == 0
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.greenDay.alpha = 0
                    self.goldDay.alpha = 1
                    self.button.tintColor = .DRGreen
                    
            })
        }
        else
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.greenDay.alpha = 1
                    self.goldDay.alpha = 0
                    self.button.tintColor = .DRGold
            })
        }
        
    }
}
