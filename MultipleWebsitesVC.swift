//
//  MultipleWebsitesVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 5/10/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class MultipleWebsitesVC: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func dismissPopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    var websites: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.cornerRadius = 20
        backgroundView.layer.masksToBounds = true
        determineWebsites(data: websites)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func determineWebsites(data: String){
        if let websites = websites {
            textView.text = websites
        } else {
            textView.text = "The Websites Could Not be Loaded Properly, please try again"
        }
    }
}
